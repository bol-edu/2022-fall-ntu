import os
import sys
import numpy as np
import torch
from nms import cellboxes_to_boxes, non_max_suppression
# import yolov1.utils as ut

# define parameters (fixed)
score_th = 0.4
iou_th = 0.5

def read_file(file_path):
    data = np.loadtxt(file_path, ndmin=2) # (class, score, x, y, h, w)
    if len(data) == 0:
        return np.array([[]]), np.array([])
    bboxes = data[:, 1:] # (score, x, y, h, w) -> S*S
    class_preds = data[:, 0] # (class) -> S*S
    return bboxes, class_preds

def check_result_c2b(c2b_bboxes, c2b_class_preds, bboxes, class_preds):
    c2b_bboxes = np.array(c2b_bboxes)
    c2b_class_preds = np.array(c2b_class_preds)
    if not (np.allclose(c2b_bboxes, bboxes) and np.allclose(c2b_class_preds, class_preds)):
        return False
    return True

def check_result_nms(nms_bboxes, nms_class_preds, bboxes_gt, class_preds_gt, num):
    nms_bboxes = np.array(nms_bboxes)
    nms_class_preds = np.array(nms_class_preds)
    print(f"---num to check: {num}")
    for i in range(num):
        if not (np.allclose(nms_bboxes[i], bboxes_gt[i]) and np.allclose(nms_class_preds[i], class_preds_gt[i])):
            return False
    return True

if __name__ == '__main__':

    print("###############################")
    print("### Non Maximum Suppression ###")
    print("###############################")

    pred_dir = "./data/model_out/"
    input_dir = "./data/nms_in/"
    output_dir = "./data/nms_out/"

    for file_name in sorted(os.listdir(input_dir)):
        if ".txt" not in file_name:
            continue
        print(f"testing {file_name}...")
        predictions = np.loadtxt(os.path.join(pred_dir, file_name), ndmin=2).flatten() # (S*S*(C+B*5))
        bboxes, class_preds = read_file(os.path.join(input_dir, file_name))
        bboxes_gt, class_preds_gt = read_file(os.path.join(output_dir, file_name))

        # print("---gt check correctness...")
        # # check cellboxes_to_boxes()
        # c2b_bboxes_gt = ut.cellboxes_to_boxes(torch.from_numpy(predictions).unsqueeze(0))
        # assert np.allclose(np.concatenate((class_preds[:, np.newaxis], bboxes), axis=1), np.array(c2b_bboxes_gt))
        # # check non_max_suppression()
        # nms_bboxes_gt = ut.non_max_suppression(np.concatenate((class_preds[:, np.newaxis], bboxes), axis=1).tolist(), iou_threshold=iou_th, threshold=score_th)
        # if len(nms_bboxes_gt) == 0:
        #     assert bboxes_gt.any() == class_preds_gt.any() == False
        # else:
        #     assert np.allclose(bboxes_gt, np.array(nms_bboxes_gt)[:, 1:])
        #     assert np.allclose(class_preds_gt, np.array(nms_bboxes_gt)[:, 0])
        # print("---gt pass")

        print("---start my c2b...")
        c2b_bboxes, c2b_class_preds = cellboxes_to_boxes(predictions.tolist())
        # check cellboxes_to_boxes()
        if check_result_c2b(c2b_bboxes, c2b_class_preds, bboxes, class_preds):
            print("---c2b pass")
        else:
            print("---c2b fail")
            exit(1)
        print("---start my nms...")
        nms_bboxes, nms_class_preds, num = non_max_suppression(c2b_bboxes, c2b_class_preds, score_th=score_th, iou_th=iou_th)
        # check non_max_suppression()
        if (num == len(class_preds_gt)) and check_result_nms(nms_bboxes, nms_class_preds, bboxes_gt, class_preds_gt, num=num):
            print("---nms pass")
        else:
            print("---nms fail")
            exit(1)  
    print("ALL PASS!!")