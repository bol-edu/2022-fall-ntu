#ifndef CONFIG
#define CONFIG

typedef int8_t DTYPE;

#ifdef __SYNTHESIS__
#define IMAGE_NUM 1000
#endif

#ifndef __SYNTHESIS__
#define IMAGE_NUM 1000
#endif

#define FC1_INPUT_SIZE	100
#define FC1_OUTPUT_SIZE	256
#define FC2_INPUT_SIZE	256
#define FC2_OUTPUT_SIZE	512
#define FC3_INPUT_SIZE	512
#define FC3_OUTPUT_SIZE	784

#define FC1_PE 1
#define FC2_PE 16
#define FC3_PE 64

#define FC1_LOOP 100
#define FC2_LOOP 16
#define FC3_LOOP 8

#define INPUT_SCALE	0.0172
#define INPUT_ZEROP	58
#define FC1_SCALE	0.03486945480108261
#define FC1_ZEROP	0
#define FC2_SCALE 	0.16982942819595337
#define FC2_ZEROP	0
#define FC3_SCALE 	0.6684179902076721
#define FC3_ZEROP	106

#endif
