// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp"
# 9 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp"
# 1 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.h" 1



typedef float DTYPE;
typedef int INTTYPE;






const unsigned short reversible_idx[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 67, 68, 69, 70, 71, 73, 74, 75, 76, 77, 78, 79, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 97, 98, 99, 100, 101, 102, 103, 105, 106, 107, 108, 109, 110, 111, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 129, 130, 131, 133, 134, 135, 137, 138, 139, 140, 141, 142, 143, 145, 146, 147, 148, 149, 150, 151, 153, 154, 155, 156, 157, 158, 159, 161, 162, 163, 165, 166, 167, 169, 170, 171, 172, 173, 174, 175, 177, 178, 179, 181, 182, 183, 185, 186, 187, 188, 189, 190, 191, 193, 194, 195, 197, 198, 199, 201, 202, 203, 205, 206, 207, 209, 210, 211, 213, 214, 215, 217, 218, 219, 220, 221, 222, 223, 225, 226, 227, 229, 230, 231, 233, 234, 235, 237, 238, 239, 241, 242, 243, 245, 246, 247, 249, 250, 251, 253, 254, 255, 257, 259, 261, 262, 263, 265, 266, 267, 269, 270, 271, 273, 274, 275, 277, 278, 279, 281, 282, 283, 285, 286, 287, 289, 291, 293, 294, 295, 297, 298, 299, 301, 302, 303, 305, 307, 309, 310, 311, 313, 314, 315, 317, 318, 319, 321, 323, 325, 326, 327, 329, 331, 333, 334, 335, 337, 339, 341, 342, 343, 345, 346, 347, 349, 350, 351, 353, 355, 357, 358, 359, 361, 363, 365, 366, 367, 369, 371, 373, 374, 375, 377, 379, 381, 382, 383, 385, 387, 389, 391, 393, 395, 397, 398, 399, 401, 403, 405, 406, 407, 409, 411, 413, 414, 415, 417, 419, 421, 423, 425, 427, 429, 430, 431, 433, 435, 437, 439, 441, 443, 445, 446, 447, 449, 451, 453, 455, 457, 459, 461, 463, 465, 467, 469, 471, 473, 475, 477, 478, 479, 481, 483, 485, 487, 489, 491, 493, 495, 497, 499, 501, 503, 505, 507, 509, 511, 515, 517, 519, 521, 523, 525, 527, 529, 531, 533, 535, 537, 539, 541, 543, 547, 549, 551, 553, 555, 557, 559, 563, 565, 567, 569, 571, 573, 575, 579, 581, 583, 587, 589, 591, 595, 597, 599, 601, 603, 605, 607, 611, 613, 615, 619, 621, 623, 627, 629, 631, 635, 637, 639, 643, 647, 651, 653, 655, 659, 661, 663, 667, 669, 671, 675, 679, 683, 685, 687, 691, 695, 699, 701, 703, 707, 711, 715, 719, 723, 727, 731, 733, 735, 739, 743, 747, 751, 755, 759, 763, 767, 775, 779, 783, 787, 791, 795, 799, 807, 811, 815, 823, 827, 831, 839, 847, 855, 859, 863, 871, 879, 887, 895, 911, 919, 927, 943, 959, 991};
const unsigned short reversed_idx[] = {512, 256, 768, 128, 640, 384, 896, 64, 576, 320, 832, 192, 704, 448, 960, 32, 544, 288, 800, 160, 672, 416, 928, 96, 608, 352, 864, 224, 736, 480, 992, 528, 272, 784, 144, 656, 400, 912, 80, 592, 336, 848, 208, 720, 464, 976, 560, 304, 816, 176, 688, 432, 944, 112, 624, 368, 880, 240, 752, 496, 1008, 520, 264, 776, 136, 648, 392, 904, 584, 328, 840, 200, 712, 456, 968, 552, 296, 808, 168, 680, 424, 936, 104, 616, 360, 872, 232, 744, 488, 1000, 536, 280, 792, 152, 664, 408, 920, 600, 344, 856, 216, 728, 472, 984, 568, 312, 824, 184, 696, 440, 952, 632, 376, 888, 248, 760, 504, 1016, 516, 260, 772, 644, 388, 900, 580, 324, 836, 196, 708, 452, 964, 548, 292, 804, 164, 676, 420, 932, 612, 356, 868, 228, 740, 484, 996, 532, 276, 788, 660, 404, 916, 596, 340, 852, 212, 724, 468, 980, 564, 308, 820, 692, 436, 948, 628, 372, 884, 244, 756, 500, 1012, 524, 268, 780, 652, 396, 908, 588, 332, 844, 716, 460, 972, 556, 300, 812, 684, 428, 940, 620, 364, 876, 236, 748, 492, 1004, 540, 284, 796, 668, 412, 924, 604, 348, 860, 732, 476, 988, 572, 316, 828, 700, 444, 956, 636, 380, 892, 764, 508, 1020, 514, 770, 642, 386, 898, 578, 322, 834, 706, 450, 962, 546, 290, 802, 674, 418, 930, 610, 354, 866, 738, 482, 994, 530, 786, 658, 402, 914, 594, 338, 850, 722, 466, 978, 562, 818, 690, 434, 946, 626, 370, 882, 754, 498, 1010, 522, 778, 650, 394, 906, 586, 842, 714, 458, 970, 554, 810, 682, 426, 938, 618, 362, 874, 746, 490, 1002, 538, 794, 666, 410, 922, 602, 858, 730, 474, 986, 570, 826, 698, 442, 954, 634, 890, 762, 506, 1018, 518, 774, 646, 902, 582, 838, 710, 454, 966, 550, 806, 678, 422, 934, 614, 870, 742, 486, 998, 534, 790, 662, 918, 598, 854, 726, 470, 982, 566, 822, 694, 950, 630, 886, 758, 502, 1014, 526, 782, 654, 910, 590, 846, 718, 974, 558, 814, 686, 942, 622, 878, 750, 494, 1006, 542, 798, 670, 926, 606, 862, 734, 990, 574, 830, 702, 958, 638, 894, 766, 1022, 769, 641, 897, 577, 833, 705, 961, 545, 801, 673, 929, 609, 865, 737, 993, 785, 657, 913, 593, 849, 721, 977, 817, 689, 945, 625, 881, 753, 1009, 777, 649, 905, 841, 713, 969, 809, 681, 937, 617, 873, 745, 1001, 793, 665, 921, 857, 729, 985, 825, 697, 953, 889, 761, 1017, 773, 901, 837, 709, 965, 805, 677, 933, 869, 741, 997, 789, 917, 853, 725, 981, 821, 949, 885, 757, 1013, 781, 909, 845, 973, 813, 941, 877, 749, 1005, 797, 925, 861, 989, 829, 957, 893, 1021, 899, 835, 963, 803, 931, 867, 995, 915, 851, 979, 947, 883, 1011, 907, 971, 939, 875, 1003, 923, 987, 955, 1019, 967, 935, 999, 983, 1015, 1007};






const DTYPE W_real[]={1.000000, 0.999981,0.999925,0.999831,0.999699,0.999529,0.999322,0.999078,0.998795,0.998476,0.998118,0.997723,0.997290,0.996820,0.996313,0.995767,0.995185,

0.994565,0.993907,0.993212,0.992480,0.991710,0.990903,0.990058,0.989177,0.988258,0.987301,0.986308,0.985278,0.984210,0.983105,0.981964,0.980785,

0.979570,0.978317,0.977028,0.975702,0.974339,0.972940,0.971504,0.970031,0.968522,0.966976,0.965394,0.963776,0.962121,0.960431,0.958703,0.956940,

0.955141,0.953306,0.951435,0.949528,0.947586,0.945607,0.943593,0.941544,0.939459,0.937339,0.935184,0.932993,0.930767,0.928506,0.926210,0.923880,

0.921514,0.919114,0.916679,0.914210,0.911706,0.909168,0.906596,0.903989,0.901349,0.898674,0.895966,0.893224,0.890449,0.887640,0.884797,0.881921,

0.879012,0.876070,0.873095,0.870087,0.867046,0.863973,0.860867,0.857729,0.854558,0.851355,0.848120,0.844854,0.841555,0.838225,0.834863,0.831470,

0.828045,0.824589,0.821102,0.817585,0.814036,0.810457,0.806848,0.803208,0.799537,0.795837,0.792107,0.788346,0.784557,0.780737,0.776888,0.773010,

0.769103,0.765167,0.761202,0.757209,0.753187,0.749136,0.745058,0.740951,0.736817,0.732654,0.728464,0.724247,0.720002,0.715731,0.711432,0.707107,

0.702755,0.698376,0.693971,0.689541,0.685084,0.680601,0.676093,0.671559,0.667000,0.662416,0.657807,0.653173,0.648514,0.643832,0.639124,0.634393,

0.629638,0.624859,0.620057,0.615232,0.610383,0.605511,0.600616,0.595699,0.590760,0.585798,0.580814,0.575808,0.570781,0.565732,0.560662,0.555570,

0.550458,0.545325,0.540171,0.534998,0.529804,0.524590,0.519356,0.514103,0.508830,0.503538,0.498228,0.492898,0.487550,0.482184,0.476799,0.471397,

0.465976,0.460539,0.455084,0.449611,0.444122,0.438616,0.433094,0.427555,0.422000,0.416430,0.410843,0.405241,0.399624,0.393992,0.388345,0.382683,

0.377007,0.371317,0.365613,0.359895,0.354163,0.348419,0.342661,0.336890,0.331106,0.325310,0.319502,0.313682,0.307850,0.302006,0.296151,0.290285,

0.284407,0.278520,0.272621,0.266713,0.260794,0.254866,0.248928,0.242980,0.237024,0.231058,0.225084,0.219101,0.213110,0.207111,0.201105,0.195090,

0.189069,0.183040,0.177004,0.170962,0.164913,0.158858,0.152797,0.146730,0.140658,0.134581,0.128498,0.122411,0.116319,0.110222,0.104122,0.098017,

0.091909,0.085797,0.079682,0.073565,0.067444,0.061321,0.055195,0.049068,0.042938,0.036807,0.030675,0.024541,0.018407,0.012271,0.006136,-0.000000,

-0.006136,-0.012272,-0.018407,-0.024541,-0.030675,-0.036807,-0.042938,-0.049068,-0.055195,-0.061321,-0.067444,-0.073565,-0.079682,-0.085797,-0.091909,-0.098017,

-0.104122,-0.110222,-0.116319,-0.122411,-0.128498,-0.134581,-0.140658,-0.146731,-0.152797,-0.158858,-0.164913,-0.170962,-0.177004,-0.183040,-0.189069,-0.195090,

-0.201105,-0.207111,-0.213110,-0.219101,-0.225084,-0.231058,-0.237024,-0.242980,-0.248928,-0.254866,-0.260794,-0.266713,-0.272621,-0.278520,-0.284408,-0.290285,

-0.296151,-0.302006,-0.307850,-0.313682,-0.319502,-0.325310,-0.331106,-0.336890,-0.342661,-0.348419,-0.354164,-0.359895,-0.365613,-0.371317,-0.377007,-0.382683,

-0.388345,-0.393992,-0.399624,-0.405241,-0.410843,-0.416430,-0.422000,-0.427555,-0.433094,-0.438616,-0.444122,-0.449611,-0.455084,-0.460539,-0.465977,-0.471397,

-0.476799,-0.482184,-0.487550,-0.492898,-0.498228,-0.503538,-0.508830,-0.514103,-0.519356,-0.524590,-0.529804,-0.534998,-0.540172,-0.545325,-0.550458,-0.555570,

-0.560662,-0.565732,-0.570781,-0.575808,-0.580814,-0.585798,-0.590760,-0.595699,-0.600617,-0.605511,-0.610383,-0.615232,-0.620057,-0.624860,-0.629638,-0.634393,

-0.639125,-0.643832,-0.648514,-0.653173,-0.657807,-0.662416,-0.667000,-0.671559,-0.676093,-0.680601,-0.685084,-0.689541,-0.693972,-0.698376,-0.702755,-0.707107,

-0.711432,-0.715731,-0.720003,-0.724247,-0.728464,-0.732654,-0.736817,-0.740951,-0.745058,-0.749136,-0.753187,-0.757209,-0.761202,-0.765167,-0.769103,-0.773010,

-0.776888,-0.780737,-0.784557,-0.788346,-0.792107,-0.795837,-0.799537,-0.803208,-0.806848,-0.810457,-0.814036,-0.817585,-0.821103,-0.824589,-0.828045,-0.831470,

-0.834863,-0.838225,-0.841555,-0.844854,-0.848120,-0.851355,-0.854558,-0.857729,-0.860867,-0.863973,-0.867046,-0.870087,-0.873095,-0.876070,-0.879012,-0.881921,

-0.884797,-0.887640,-0.890449,-0.893224,-0.895966,-0.898674,-0.901349,-0.903989,-0.906596,-0.909168,-0.911706,-0.914210,-0.916679,-0.919114,-0.921514,-0.923880,

-0.926210,-0.928506,-0.930767,-0.932993,-0.935184,-0.937339,-0.939459,-0.941544,-0.943594,-0.945607,-0.947586,-0.949528,-0.951435,-0.953306,-0.955141,-0.956940,

-0.958704,-0.960431,-0.962121,-0.963776,-0.965394,-0.966976,-0.968522,-0.970031,-0.971504,-0.972940,-0.974339,-0.975702,-0.977028,-0.978317,-0.979570,-0.980785,

-0.981964,-0.983105,-0.984210,-0.985278,-0.986308,-0.987301,-0.988258,-0.989177,-0.990058,-0.990903,-0.991710,-0.992480,-0.993212,-0.993907,-0.994565,-0.995185,

-0.995767,-0.996313,-0.996820,-0.997290,-0.997723,-0.998118,-0.998476,-0.998795,-0.999078,-0.999322,-0.999529,-0.999699,-0.999831,-0.999925,-0.999981};
const DTYPE W_imag[]={-0.000000,-0.006136,-0.012272,-0.018407,-0.024541,-0.030675,-0.036807,-0.042938,-0.049068,-0.055195,-0.061321,-0.067444,-0.073565,-0.079682,-0.085797,-0.091909,-0.098017,-0.104122,-0.110222,-0.116319,-0.122411,-0.128498,-0.134581,-0.140658,-0.146730,-0.152797,-0.158858,-0.164913,-0.170962,-0.177004,-0.183040,-0.189069,-0.195090,-0.201105,-0.207111,-0.213110,-0.219101,-0.225084,-0.231058,-0.237024,-0.242980,-0.248928,-0.254866,-0.260794,-0.266713,-0.272621,-0.278520,-0.284408,-0.290285,-0.296151,-0.302006,-0.307850,-0.313682,-0.319502,-0.325310,-0.331106,-0.336890,-0.342661,-0.348419,-0.354164,-0.359895,-0.365613,-0.371317,-0.377007,-0.382683,-0.388345,-0.393992,-0.399624,-0.405241,-0.410843,-0.416430,-0.422000,-0.427555,-0.433094,-0.438616,-0.444122,-0.449611,-0.455084,-0.460539,-0.465977,-0.471397,-0.476799,-0.482184,-0.487550,-0.492898,-0.498228,-0.503538,-0.508830,-0.514103,-0.519356,-0.524590,-0.529804,-0.534998,-0.540172,-0.545325,-0.550458,-0.555570,-0.560662,-0.565732,-0.570781,-0.575808,-0.580814,-0.585798,-0.590760,-0.595699,-0.600617,-0.605511,-0.610383,-0.615232,-0.620057,-0.624860,-0.629638,-0.634393,-0.639124,-0.643832,-0.648514,-0.653173,-0.657807,-0.662416,-0.667000,-0.671559,-0.676093,-0.680601,-0.685084,-0.689541,-0.693971,-0.698376,-0.702755,-0.707107,-0.711432,-0.715731,-0.720003,-0.724247,-0.728464,-0.732654,-0.736817,-0.740951,-0.745058,-0.749136,-0.753187,-0.757209,-0.761202,-0.765167,-0.769103,-0.773010,-0.776888,-0.780737,-0.784557,-0.788346,-0.792107,-0.795837,-0.799537,-0.803208,-0.806848,-0.810457,-0.814036,-0.817585,-0.821103,-0.824589,-0.828045,-0.831470,-0.834863,-0.838225,-0.841555,-0.844854,-0.848120,-0.851355,-0.854558,-0.857729,-0.860867,-0.863973,-0.867046,-0.870087,-0.873095,-0.876070,-0.879012,-0.881921,-0.884797,-0.887640,-0.890449,-0.893224,-0.895966,-0.898674,-0.901349,-0.903989,-0.906596,-0.909168,-0.911706,-0.914210,-0.916679,-0.919114,-0.921514,-0.923880,-0.926210,-0.928506,-0.930767,-0.932993,-0.935184,-0.937339,-0.939459,-0.941544,-0.943593,-0.945607,-0.947586,-0.949528,-0.951435,-0.953306,-0.955141,-0.956940,-0.958703,-0.960431,-0.962121,-0.963776,-0.965394,-0.966976,-0.968522,-0.970031,-0.971504,-0.972940,-0.974339,-0.975702,-0.977028,-0.978317,-0.979570,-0.980785,-0.981964,-0.983105,-0.984210,-0.985278,-0.986308,-0.987301,-0.988258,-0.989177,-0.990058,-0.990903,-0.991710,-0.992480,-0.993212,-0.993907,-0.994565,-0.995185,-0.995767,-0.996313,-0.996820,-0.997290,-0.997723,-0.998118,-0.998476,-0.998795,-0.999078,-0.999322,-0.999529,-0.999699,-0.999831,-0.999925,-0.999981,-1.000000,-0.999981,-0.999925,-0.999831,-0.999699,-0.999529,-0.999322,-0.999078,-0.998795,-0.998476,-0.998118,-0.997723,-0.997290,-0.996820,-0.996313,-0.995767,-0.995185,-0.994565,-0.993907,-0.993212,-0.992480,-0.991710,-0.990903,-0.990058,-0.989177,-0.988258,-0.987301,-0.986308,-0.985278,-0.984210,-0.983105,-0.981964,-0.980785,-0.979570,-0.978317,-0.977028,-0.975702,-0.974339,-0.972940,-0.971504,-0.970031,-0.968522,-0.966976,-0.965394,-0.963776,-0.962121,-0.960431,-0.958703,-0.956940,-0.955141,-0.953306,-0.951435,-0.949528,-0.947586,-0.945607,-0.943593,-0.941544,-0.939459,-0.937339,-0.935183,-0.932993,-0.930767,-0.928506,-0.926210,-0.923880,-0.921514,-0.919114,-0.916679,-0.914210,-0.911706,-0.909168,-0.906596,-0.903989,-0.901349,-0.898674,-0.895966,-0.893224,-0.890449,-0.887640,-0.884797,-0.881921,-0.879012,-0.876070,-0.873095,-0.870087,-0.867046,-0.863973,-0.860867,-0.857729,-0.854558,-0.851355,-0.848120,-0.844854,-0.841555,-0.838225,-0.834863,-0.831470,-0.828045,-0.824589,-0.821102,-0.817585,-0.814036,-0.810457,-0.806848,-0.803208,-0.799537,-0.795837,-0.792107,-0.788346,-0.784557,-0.780737,-0.776888,-0.773010,-0.769103,-0.765167,-0.761202,-0.757209,-0.753187,-0.749136,-0.745058,-0.740951,-0.736817,-0.732654,-0.728464,-0.724247,-0.720002,-0.715731,-0.711432,-0.707107,-0.702755,-0.698376,-0.693971,-0.689541,-0.685084,-0.680601,-0.676093,-0.671559,-0.667000,-0.662416,-0.657807,-0.653173,-0.648514,-0.643831,-0.639124,-0.634393,-0.629638,-0.624859,-0.620057,-0.615232,-0.610383,-0.605511,-0.600616,-0.595699,-0.590760,-0.585798,-0.580814,-0.575808,-0.570781,-0.565732,-0.560661,-0.555570,-0.550458,-0.545325,-0.540171,-0.534998,-0.529804,-0.524590,-0.519356,-0.514103,-0.508830,-0.503538,-0.498228,-0.492898,-0.487550,-0.482184,-0.476799,-0.471397,-0.465976,-0.460539,-0.455084,-0.449611,-0.444122,-0.438616,-0.433094,-0.427555,-0.422000,-0.416429,-0.410843,-0.405241,-0.399624,-0.393992,-0.388345,-0.382683,-0.377007,-0.371317,-0.365613,-0.359895,-0.354163,-0.348419,-0.342661,-0.336890,-0.331106,-0.325310,-0.319502,-0.313682,-0.307850,-0.302006,-0.296151,-0.290285,-0.284407,-0.278520,-0.272621,-0.266713,-0.260794,-0.254866,-0.248928,-0.242980,-0.237024,-0.231058,-0.225084,-0.219101,-0.213110,-0.207111,-0.201105,-0.195090,-0.189069,-0.183040,-0.177004,-0.170962,-0.164913,-0.158858,-0.152797,-0.146730,-0.140658,-0.134581,-0.128498,-0.122411,-0.116319,-0.110222,-0.104122,-0.098017,-0.091909,-0.085797,-0.079682,-0.073564,-0.067444,-0.061321,-0.055195,-0.049068,-0.042938,-0.036807,-0.030675,-0.024541,-0.018407,-0.012271,-0.006136};



void fft(DTYPE XX_R[1024], DTYPE XX_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]);
# 10 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp" 2
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 1 3
# 11 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 13 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 89 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
             
# 98 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
             
# 14 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3
# 45 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3

# 45 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 15 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 276 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 566 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
# 567 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 568 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 11 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 100 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
}



#pragma pack(pop)
# 277 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 535 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
extern "C" {




void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 12 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 36 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long size_t;
# 46 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 63 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long intptr_t;
# 76 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 89 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ptrdiff_t;
# 107 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 139 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef __time64_t time_t;
# 423 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 11 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 2 3
# 22 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
extern "C" {
# 46 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;




}


# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 1 3
# 11 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 2 3
# 24 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 3
extern "C" {


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strcpy_s(char (&_Dest)[__size], const char * _Source) { return strcpy_s(_Dest,__size,_Source); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strncpy_s(char (&_Dest)[__size], const char * _Source, size_t _MaxCount) { return strncpy_s(_Dest,__size,_Source,_MaxCount); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) _strncpy_s_l(char (&_Dest)[__size], const char * _Source, size_t _MaxCount, _locale_t _Locale) { return _strncpy_s_l(_Dest,__size,_Source,_MaxCount,_Locale); } };
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strcat_s(char (&_Dest)[__size], const char * _Source) { return strcat_s(_Dest,__size,_Source); } }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t (&_Dest)[__size], const wchar_t * _Source) { return wcscpy_s(_Dest,__size,_Source); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t (&_Dest)[__size], const wchar_t * _Source) { return wcscat_s(_Dest,__size,_Source); } }

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t (&_Dest)[__size], const wchar_t * _Source, size_t _MaxCount) { return wcsncpy_s(_Dest,__size,_Source,_MaxCount); } };
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t (&_Dest)[__size], const wchar_t * _Source, size_t _MaxCount, _locale_t _Locale) { return _wcsncpy_s_l(_Dest,__size,_Source,_MaxCount,_Locale); } };
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val, size_t _Count,_locale_t _Locale);

  inline __attribute__((__always_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }



}
# 192 "C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 2 3
# 11 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp" 2



# 13 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp"
template<int stage, int factor=4>
void fft_stage_t(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]);
void fft_stage(DTYPE X_R[1024], DTYPE X_I[1024], int stage, DTYPE OUT_R[1024], DTYPE OUT_I[1024]);
void bit_reverse(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]);
void fft_exec(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]);

void fft(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=m_axi bundle=input_0 port=X_I offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=input_1 port=X_R offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=output_0 port=OUT_I offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=output_1 port=OUT_R offset=slave
#pragma HLS INTERFACE mode=s_axilite port=X_R
#pragma HLS INTERFACE mode=s_axilite port=X_I
#pragma HLS INTERFACE mode=s_axilite port=OUT_R
#pragma HLS INTERFACE mode=s_axilite port=OUT_I

 DTYPE X_R_i[1024], X_I_i[1024];
 DTYPE OUT_R_o[1024], OUT_I_o[1024];

 memcpy(X_R_i, X_R, 1024*sizeof(DTYPE));
 memcpy(X_I_i, X_I, 1024*sizeof(DTYPE));
 fft_exec(X_R_i, X_I_i, OUT_R_o, OUT_I_o);
 memcpy(OUT_R, OUT_R_o, 1024*sizeof(DTYPE));
 memcpy(OUT_I, OUT_I_o, 1024*sizeof(DTYPE));
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_fft_ir(float *, float *, float *, float *);
#ifdef __cplusplus
extern "C"
#endif
void fft_hw_stub(float *X_R, float *X_I, float *OUT_R, float *OUT_I){
fft(X_R, X_I, OUT_R, OUT_I);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_fft_sw(float *X_R, float *X_I, float *OUT_R, float *OUT_I){
apatb_fft_ir(X_R, X_I, OUT_R, OUT_I);
return ;
}
#endif
# 38 "C:/Users/User/Documents/HLS/LabB/FFT/HLS/2_Skeleton_Restructured/fft.cpp"


void fft_exec(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]) {
 const unsigned short factor = 4;

 DTYPE Stage0_R[1024], Stage0_I[1024];
 DTYPE Stage1_R[1024], Stage1_I[1024];
 DTYPE Stage2_R[1024], Stage2_I[1024];
 DTYPE Stage3_R[1024], Stage3_I[1024];
 DTYPE Stage4_R[1024], Stage4_I[1024];
 DTYPE Stage5_R[1024], Stage5_I[1024];
 DTYPE Stage6_R[1024], Stage6_I[1024];
 DTYPE Stage7_R[1024], Stage7_I[1024];
 DTYPE Stage8_R[1024], Stage8_I[1024];
 DTYPE Stage9_R[1024], Stage9_I[1024];


#pragma HLS ARRAY_PARTITION variable=Stage0_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage0_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage1_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage1_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage2_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage2_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage3_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage3_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage4_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage4_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage5_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage5_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage6_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage6_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage7_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage7_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage8_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage8_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage9_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage9_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=OUT_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=OUT_I type=cyclic factor=factor
 bit_reverse(X_R, X_I, Stage0_R, Stage0_I);
 fft_stage_t<1, 4> (Stage0_R, Stage0_I, Stage1_R, Stage1_I);
 fft_stage_t<2, 4> (Stage1_R, Stage1_I, Stage2_R, Stage2_I);
 fft_stage_t<3, 4> (Stage2_R, Stage2_I, Stage3_R, Stage3_I);
 fft_stage_t<4, 4> (Stage3_R, Stage3_I, Stage4_R, Stage4_I);
 fft_stage_t<5, 4> (Stage4_R, Stage4_I, Stage5_R, Stage5_I);
 fft_stage_t<6> (Stage5_R, Stage5_I, Stage6_R, Stage6_I);
 fft_stage_t<7> (Stage6_R, Stage6_I, Stage7_R, Stage7_I);
 fft_stage_t<8> (Stage7_R, Stage7_I, Stage8_R, Stage8_I);
 fft_stage_t<9> (Stage8_R, Stage8_I, Stage9_R, Stage9_I);
 fft_stage_t<10>(Stage9_R, Stage9_I, OUT_R, OUT_I);
}

void bit_reverse(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]){
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_I
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_R
 All_Loop: for (unsigned short i = 0; i < 1024; i++) {
  unsigned short ri = 0;
  Reversal_Loop: for (unsigned short j = 0; j < 10; j++) {
   ri = (ri << 1) | ((i >> j) & 1);
  }
  OUT_R[i] = X_R[ri];
  OUT_I[i] = X_I[ri];
 }
}

template<int stage, int factor>
void fft_stage_t(DTYPE X_R[1024], DTYPE X_I[1024], DTYPE OUT_R[1024], DTYPE OUT_I[1024]) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_R
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_I
 const unsigned short numPts = 1 << stage;
 const unsigned short numBF = numPts >> 1;
 const unsigned short wMask = (1 << (stage-1))-1;
 const unsigned short kMask = ~wMask;

 DFT_Loop: for (unsigned short i = 0; i < 1024>>1; i++) {
#pragma HLS UNROLL factor=factor
#pragma HLS PIPELINE
  unsigned short wi = i & wMask;
  DTYPE c = W_real[wi << (10 -stage)];
  DTYPE s = W_imag[wi << (10 -stage)];
  unsigned short k = i + (i & kMask);
  unsigned short k_lower = k + numBF;

  DTYPE R = X_R[k];
  DTYPE I = X_I[k];
  DTYPE R_lower = X_R[k_lower];
  DTYPE I_lower = X_I[k_lower];

  DTYPE t_R = R_lower*c - I_lower*s;
  DTYPE t_I = I_lower*c + R_lower*s;

  OUT_R[k_lower] = R - t_R;
  OUT_I[k_lower] = I - t_I;
  OUT_R[k] = R + t_R;
  OUT_I[k] = I + t_I;
 }
}
