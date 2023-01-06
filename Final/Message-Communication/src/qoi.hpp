#pragma once
#include "common.hpp"
#include "ap_int.h"

inline unsigned int endian_convert(unsigned int i) {
	return ((i & 0xFF) << 24) | (((i >> 8) & 0xFF) << 16) | (((i >> 16) & 0xFF) << 8) | ((i >> 24) & 0xFF);
}

struct qoi_header {
	union {
		Byte bytes[14];
		struct {
			char			magic[4];
			unsigned int	width;
			unsigned int	height;
			Byte			channels;
			Byte			colorspace;
		} __attribute__ ((packed));
	};

	qoi_header(unsigned int width, unsigned int height)
		: width(endian_convert(width)), height(endian_convert(height)), channels(3), colorspace(0) {
		magic[0] = 'q';
		magic[1] = 'o';
		magic[2] = 'i';
		magic[3] = 'f';
	}
};

void qoi_encode(Byte[BUF_SIZE], unsigned int, unsigned int, Byte[BUF_SIZE]);

void qoi_decode(Byte[BUF_SIZE], Byte[BUF_SIZE]);
