#include "top.hpp"
#include <string>
#include <stdio.h>
#include <stdlib.h>

int test_top() {
	std::string testcase = "checker";

	FILE *fp_in = fopen((testcase + ".bin").c_str(), "rb");
	FILE *fp_out = fopen(std::string("out.hex").c_str(), "w");

	unsigned int w = 0, h = 0;
	for (int i = 0; i < 4; i++) {
		unsigned char byte;
		fscanf(fp_in, "%c", &byte);
		w = w + (byte << (i * 8));
	}
	for (int i = 0; i < 4; i++) {
		unsigned char byte;
		fscanf(fp_in, "%c", &byte);
		h = h + (byte << (i * 8));
	}
	printf("%d %d\n", w, h);

	Byte img[BUF_SIZE], recovered[BUF_SIZE];
	for (int i = 0; i < w*h*3; i++) {
		fscanf(fp_in, "%c", &img[i]);
		recovered[i] = 0;
	}

	top(img, 10, recovered);

	int err = 0;
	for (int i = 0; i < w*h*3; i++) {
		fprintf(fp_out, "%c", recovered[i]);
		if (img[i] != recovered[i])
			err++;
	}
	return err;
}

int main() {
	return test_top();
}
