#include "nms.hpp"
#ifndef __SYNTHESIS__
#include <iostream>
#endif

static void cellboxes_to_boxes(fixed *predictions, fixed *bboxes, unsigned *class_preds) {
LOOP_C2B_ROW:
    for (int i = 0;i < S;++i) {
LOOP_C2B_COL:
        for (int j = 0;j < S;++j) {
            int best_index = -1;
            fixed best_score = -1;
LOOP_C2B_SCORE:
            for (int k = 0;k < B;++k) {
#pragma HLS UNROLL
                int index = (i*S+j)*(C+B*5)+C+5*k;
                fixed score = predictions[index];
                if (score > best_score) {
                    best_score = score;
                    best_index = index;
                }
            }
            fixed best_bbox[5];
            best_bbox[0] = predictions[best_index];
            best_bbox[1] = (predictions[best_index+1] + j) / S; // x
            best_bbox[2] = (predictions[best_index+2] + i) / S; // y
            best_bbox[3] = predictions[best_index+3] / S;       // w
            best_bbox[4] = predictions[best_index+4] / S;       // h
            bboxes[(i*S+j)*5+0] = best_bbox[0];
            bboxes[(i*S+j)*5+1] = best_bbox[1];
            bboxes[(i*S+j)*5+2] = best_bbox[2];
            bboxes[(i*S+j)*5+3] = best_bbox[3];
            bboxes[(i*S+j)*5+4] = best_bbox[4];
            unsigned max_class = 0;
            fixed max_prob = -1;
LOOP_C2B_CLASS:
            for (int k = 0;k < C;++k) {
// #pragma HLS PIPELINE II=1 style=flp
                fixed prob = predictions[(i*S+j)*(C+B*5)+k];
                if (prob > max_prob) {
                    max_prob = prob;
                    max_class = (unsigned)k;
                }
            }
            class_preds[i*S+j] = max_class;
        }
    }
    return;
}

static void insertion_sort(fixed *bboxes, unsigned *class_preds) {
LOOP_SORT_MAIN_I:
    for (int i = 1;i < S*S;++i) {
        fixed bbox[5];
        bbox[0] = bboxes[i*5+0];
        bbox[1] = bboxes[i*5+1];
        bbox[2] = bboxes[i*5+2];
        bbox[3] = bboxes[i*5+3];
        bbox[4] = bboxes[i*5+4];
        unsigned class_pred = class_preds[i];
LOOP_SORT_MAIN_J:
        for (int j = i - 1; j >= 0;--j) {
//#pragma HLS PIPELINE II=1 style=flp
            if (bbox[0] > bboxes[j*5]) {
                bboxes[(j+1)*5+0] = bboxes[j*5+0];
                bboxes[(j+1)*5+1] = bboxes[j*5+1];
                bboxes[(j+1)*5+2] = bboxes[j*5+2];
                bboxes[(j+1)*5+3] = bboxes[j*5+3];
                bboxes[(j+1)*5+4] = bboxes[j*5+4];
                class_preds[j+1] = class_preds[j];
                if (j == 0) {
                    bboxes[j*5+0] = bbox[0];
                    bboxes[j*5+1] = bbox[1];
                    bboxes[j*5+2] = bbox[2];
                    bboxes[j*5+3] = bbox[3];
                    bboxes[j*5+4] = bbox[4];
                    class_preds[j] = class_pred;
                }
            }
            else {
                bboxes[(j+1)*5+0] = bbox[0];
                bboxes[(j+1)*5+1] = bbox[1];
                bboxes[(j+1)*5+2] = bbox[2];
                bboxes[(j+1)*5+3] = bbox[3];
                bboxes[(j+1)*5+4] = bbox[4];
                class_preds[j+1] = class_pred;
                break;
            }
        }
    }
    return;
}

static void intersection_over_union(fixed *box_1, fixed *box_2, fixed *iou) {
#pragma HLS INLINE
    fixed box_1_x1 = box_1[0] - box_1[2] / 2;
    fixed box_1_y1 = box_1[1] - box_1[3] / 2;
    fixed box_1_x2 = box_1[0] + box_1[2] / 2;
    fixed box_1_y2 = box_1[1] + box_1[3] / 2;
    fixed box_2_x1 = box_2[0] - box_2[2] / 2;
    fixed box_2_y1 = box_2[1] - box_2[3] / 2;
    fixed box_2_x2 = box_2[0] + box_2[2] / 2;
    fixed box_2_y2 = box_2[1] + box_2[3] / 2;

    fixed x1, y1, x2, y2;
    x1 = (box_1_x1 >= box_2_x1) ? box_1_x1 : box_2_x1;
    y1 = (box_1_y1 >= box_2_y1) ? box_1_y1 : box_2_y1;
    x2 = (box_1_x2 <= box_2_x2) ? box_1_x2 : box_2_x2;
    y2 = (box_1_y2 <= box_2_y2) ? box_1_y2 : box_2_y2;

    fixed x2_x1, y2_y1;
    x2_x1 = ((x2 - x1) > (fixed)0) ? (fixed)(x2 - x1) : (fixed)0;
    y2_y1 = ((y2 - y1) > (fixed)0) ? (fixed)(y2 - y1) : (fixed)0;
    fixed intersection_area = x2_x1 * y2_y1;

    fixed box_1_area = (box_1_x2 - box_1_x1) * (box_1_y2 - box_1_y1);
    fixed box_2_area = (box_2_x2 - box_2_x1) * (box_2_y2 - box_2_y1);

    box_1_area = (box_1_area > (fixed)0) ? (fixed)box_1_area : (fixed)((fixed)(-1) * box_1_area);
    box_2_area = (box_2_area > (fixed)0) ? (fixed)box_2_area : (fixed)((fixed)(-1) * box_2_area);

    fixed union_area = box_1_area + box_2_area - intersection_area;
    *iou = intersection_area / union_area;

    return;
}

static void non_max_suppression(fixed *bboxes, unsigned *class_preds, fixed *nms_bboxes, unsigned *nms_class_preds, unsigned *nms_num) {

    insertion_sort(bboxes, class_preds);

    unsigned nms_idx = 0;
    unsigned top = 0;
    bool top_is_set = false;
    bool remain_list[S*S];
    bool empty_flag = true;
LOOP_NMS_INIT:
    for (int i = 0;i < S*S;++i) {
#pragma HLS UNROLL
        remain_list[i] = true;
    }
LOOP_NMS_MAIN_I:
    for (int i = 0;i < S*S;++i) {
LOOP_NMS_EMPTY:
        for (int j = 0;j < S*S;++j) {
#pragma HLS PIPELINE II=1 style=flp
            if (remain_list[j] == true) {
                empty_flag = false;
                break;
            }
        }
        if (empty_flag) break;
        else {
            fixed chosen_bbox[5];
            unsigned chosen_class_pred;
            chosen_bbox[0] = bboxes[top*5+0];
            chosen_bbox[1] = bboxes[top*5+1];
            chosen_bbox[2] = bboxes[top*5+2];
            chosen_bbox[3] = bboxes[top*5+3];
            chosen_bbox[4] = bboxes[top*5+4];
            if (chosen_bbox[0] <= SCORE_TH) break;
            chosen_class_pred = class_preds[top];
            remain_list[top] = false;
            top_is_set = false;
LOOP_NMS_MAIN_J:
            for (int j = top + 1;j < S*S;++j) {
//#pragma HLS PIPELINE II=1 style=flp
                if(!top_is_set) {
                    ++top;
                }
                if (remain_list[j]) {
                    if (class_preds[j] != chosen_class_pred) {
                        top_is_set = true;
                    }
                    else {
                        fixed iou;
                        fixed box_1[4], box_2[4];
                        box_1[0] = chosen_bbox[1];
                        box_1[1] = chosen_bbox[2];
                        box_1[2] = chosen_bbox[3];
                        box_1[3] = chosen_bbox[4];
                        box_2[0] = bboxes[j*5+1];
                        box_2[1] = bboxes[j*5+2];
                        box_2[2] = bboxes[j*5+3];
                        box_2[3] = bboxes[j*5+4];
                        intersection_over_union(box_1, box_2, &iou);
                        if (iou >= IOU_TH) {
                            // discard bbox
                            remain_list[j] = false;
                        }
                        else {
                            top_is_set = true;
                        }
                    }
                }
            }
            nms_bboxes[nms_idx*5+0] = chosen_bbox[0];
            nms_bboxes[nms_idx*5+1] = chosen_bbox[1];
            nms_bboxes[nms_idx*5+2] = chosen_bbox[2];
            nms_bboxes[nms_idx*5+3] = chosen_bbox[3];
            nms_bboxes[nms_idx*5+4] = chosen_bbox[4];
            nms_class_preds[nms_idx] = chosen_class_pred;
            ++nms_idx;
        }
    }
    *nms_num = nms_idx;

    return;
}

static void read_input(fixed *predictions, hls::stream<fixed>& inData) {
LOOP_READ_INPUT:
    for (int i = 0;i < S*S*(C+5*B);++i) {
#pragma HLS PIPELINE II=1 style=flp
        predictions[i] = inData.read()*(fixed)(0.0008453252376057208)+(fixed)(0.22727718949317932);
    }
}



extern "C" void nms(
    hls::stream<fixed>& inData,
    fixed    *nms_bboxes,
    unsigned *nms_class_preds,
    unsigned *nms_num) {

#pragma HLS INTERFACE axis port=inData
#pragma HLS INTERFACE m_axi port=nms_bboxes depth=5823
#pragma HLS INTERFACE m_axi port=nms_class_preds depth=5823
#pragma HLS INTERFACE s_axilite port=nms_bboxes
#pragma HLS INTERFACE s_axilite port=nms_class_preds
#pragma HLS INTERFACE s_axilite port=nms_num
#pragma HLS INTERFACE s_axilite port=return

    fixed predictions[S*S*(C+5*B)];
    fixed bboxes[S*S*5];
    unsigned class_preds[S*S];

    read_input(predictions, inData);
    cellboxes_to_boxes(predictions, bboxes, class_preds);
    non_max_suppression(bboxes, class_preds, nms_bboxes, nms_class_preds, nms_num);
}

/*
some optimization thought
1. dataflow
2. parallelization -> how much extra hw resource ?
    loop merge or write as function?
    parallel B=2 part in c2b
    nms remain list element-wise and/or
3. pipeline II=1
    avoid loop (store insertion sort to another array) ?
4. datatype
    do not use fixed
5. reduce stream fifo size
*/
