# define parameters (fixed)
S = 7
B = 2
C = 20

def cellboxes_to_boxes(predictions):
    """
    Converts bboxes from cell ratio to image ratio, prob to class, return only best bbox
        Parameters:
            predictions (list of float): all bboxes' predictions (S*S*(C+B*5))
        Returns:
            list of list of float: converted bboxes (class, score, x, y, w, h) -> (S*S, 6)
            list of int: class labels (0~C-1) -> (S*S)
    """
    assert len(predictions) == S*S*(C+B*5)

    bboxes, class_preds = [[0.] * 6 ] * (S*S), [0] * (S*S)
    for i in range(S):
        for j in range(S):
            # get best bbox for each grid (responsible bbox)
            best_index = -1
            best_score = -1
            for k in range(B):
                index = (i*S+j)*(C+B*5)+C+5*k
                score = predictions[index]
                if score > best_score:
                    best_score = score
                    best_index = index
            best_bbox = predictions[best_index:best_index+5]
            # cell ratio to image ratio
            best_bbox[1] = (best_bbox[1] + j) / S # x
            best_bbox[2] = (best_bbox[2] + i) / S # y
            best_bbox[3] = best_bbox[3] / S # w
            best_bbox[4] = best_bbox[4] / S # h
            # probability to predicted class (argmax)
            max_class = -1
            max_prob = -1
            for k in range(C):
                prob = predictions[(i*S+j)*(C+B*5)+k]
                if prob > max_prob:
                    max_prob = prob
                    max_class = k
            # add to return lists
            bboxes[i*S+j] = best_bbox
            class_preds[i*S+j] = max_class
    return bboxes, class_preds

def insertion_sort(bboxes, class_preds):
    """
    Performs stable insertion sort from high score to low score
        Parameters:
            bboxes (list of list of float): all grid's responsible bbox's score and params (score, x, y, w, h) -> (S*S, 5)
            class_preds (list of int): all grid's predicted class label (0~C-1) -> (S*S)
        Returns:
            list of list of float: sorted bboxes (score, x, y, w, h) -> (S*S, 5)
            list of int: sorted class labels (0~C-1) -> (S*S)
    """
    assert len(bboxes) == len(class_preds) == S*S

    for i in range(1, S*S):
        bbox, class_pred = bboxes[i], class_preds[i]
        for j in range(i-1, -1, -1):
            if bbox[0] > bboxes[j][0]:
                bboxes[j+1], class_preds[j+1] = bboxes[j], class_preds[j]
                if j == 0:
                    bboxes[j], class_preds[j] = bbox, class_pred
            else:
                bboxes[j+1], class_preds[j+1] = bbox, class_pred
                break
        
    return bboxes, class_preds

def intersection_over_union(box_1, box_2):
    """
    Calculates intersection over union (box format = midpoint)
        Parameters:
            box_1 (list of float): first bounding box params (x, y, w, h) -> (4)
            box_2 (list of float): second bounding box params (x, y, w, h) -> (4)
        Returns:
            float: intersection over union value (0~1)
    """

    # left-up & right-below corner
    box_1_x1 = box_1[0] - box_1[2] / 2
    box_1_y1 = box_1[1] - box_1[3] / 2
    box_1_x2 = box_1[0] + box_1[2] / 2
    box_1_y2 = box_1[1] + box_1[3] / 2
    box_2_x1 = box_2[0] - box_2[2] / 2
    box_2_y1 = box_2[1] - box_2[3] / 2
    box_2_x2 = box_2[0] + box_2[2] / 2
    box_2_y2 = box_2[1] + box_2[3] / 2

    # intersection box's left-up & right-below corner
    x1 = max(box_1_x1, box_2_x1)
    y1 = max(box_1_y1, box_2_y1)
    x2 = min(box_1_x2, box_2_x2)
    y2 = min(box_1_y2, box_2_y2)

    # intersection area
    intersection = max(x2 - x1, 0) * max(y2 - y1, 0)

    # box_1, box_2 areas
    box_1_area = abs((box_1_x2 - box_1_x1) * (box_1_y2 - box_1_y1))
    box_2_area = abs((box_2_x2 - box_2_x1) * (box_2_y2 - box_2_y1))

    # union area
    union = box_1_area + box_2_area - intersection

    return intersection / union

def non_max_suppression(bboxes, class_preds, score_th=0.4, iou_th=0.5):
    """
    Calculates non maximum suppression (box format = midpoint)
        Parameters:
            bboxes (list of list of float): all grid's responsible bbox's score and params (score, x, y, w, h) -> (S*S, 5)
            class_preds (list of int): all grid's predicted class label (0~C-1) -> (S*S)
        Returns:
            list of list of float: bboxes after performing NMS (score, x, y, w, h) -> (?, 5)
            list of int: class labels after performing NMS (0~C-1) -> (?)
    """
    assert len(bboxes) == len(class_preds) == S*S

    # sort the boxes via score
    bboxes, class_preds = insertion_sort(bboxes, class_preds)
        
    # main loop
    nms_bboxes, nms_class_preds, nms_idx = [[0.] * 5 ] * (S*S), [0] * (S*S), 0
    top = 0 # index of highest score (current) bbox
    top_is_set = False # set true when next top index found
    remain_list = [True] * (S*S) # list of bool, when discarding bbox, set false
    for i in range(S*S):
        if not any(remain_list):
            break
        else:
            chosen_bbox = bboxes[top]
            if chosen_bbox[0] <= score_th:
                break
            chosen_class_pred = class_preds[top]
            remain_list[top] = False
            top_is_set = False
            for j in range(top+1, S*S):
                if not top_is_set:
                    top += 1
                if remain_list[j] == True: 
                    if class_preds[j] != chosen_class_pred:
                        top_is_set = True
                    else:
                        iou = intersection_over_union(chosen_bbox[1:], bboxes[j][1:])
                        if iou >= iou_th:
                            # discard bbox
                            remain_list[j] = False
                        else:
                            top_is_set = True
                # if class_preds[j] != chosen_class_pred:
                #     top_is_set = True
                # elif remain_list[j] == True:
                #     iou = intersection_over_union(chosen_bbox[1:], bboxes[j][1:])
                #     if iou >= iou_th:
                #         # discard bbox
                #         remain_list[j] = False
                #     else:
                #         top_is_set = True
                else:
                    continue
            nms_bboxes[nms_idx] = chosen_bbox
            nms_class_preds[nms_idx] = chosen_class_pred
            nms_idx += 1

    return nms_bboxes, nms_class_preds, nms_idx