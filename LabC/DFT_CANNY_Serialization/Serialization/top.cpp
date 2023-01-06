#include "top.hpp"
#include <cstring>
#include <iostream>

#define INT64   1
#define DOUBLE  3
#define STRING  5
#define EOL     13
#define EOFi    15

#define BUS_WIDTH 11

struct obj_t {
    unsigned char info;
    unsigned char fieldID[2];
    unsigned char data[8];
};

union obj_wrapper_t {
    char bytes[11];
    obj_t obj;

    inline unsigned char valid() { return obj.info & 15; }
    inline unsigned char type() { return obj.info >> 4; }
    inline unsigned short id() { return (obj.fieldID[0] << 8) | obj.fieldID[1]; }
    inline unsigned char* data() { return obj.data; }
};

void objField2Arrow(obj_wrapper_t obj, int field, bool &new_line, char *dst_buf, short &offset, char *value_buf, short &value_offset) {
#pragma HLS INLINE
	if (obj.type() == EOL || obj.type() == EOFi)
		new_line = true;
	else if (obj.id() == field) {
		if (obj.type() == STRING) {
			int offset_t = offset;
			int value_offset_t = value_offset;
			value_offset += obj.valid();
			if (new_line) {
				offset += 4;
				dst_buf[offset_t+0] = value_offset_t;
				dst_buf[offset_t+1] = value_offset_t >> 8;
				dst_buf[offset_t+2] = value_offset_t >> 16;
				dst_buf[offset_t+3] = value_offset_t >> 24;
			}
			new_line = false;
			VALUE_COPY_LOOP:
			for (int i = 0; i < 8; i++) {
#pragma HLS UNROLL
				value_buf[value_offset_t + i] = obj.data()[7-i];
			}
		} else {
			int offset_t = offset;
			offset += 8;
			BYTE_COPY_LOOP:
            for (int i = 0; i < 8; i++)
#pragma HLS UNROLL
            	dst_buf[offset_t + i] = obj.data()[7-i];
		}
	}
}

void postVector(char *buf, short &buf_size, short val_offset) {
#pragma HLS INLINE
	if (val_offset != 0) {
		buf[buf_size++] = val_offset;
		buf[buf_size++] = val_offset >> 8;
		buf[buf_size++] = val_offset >> 16;
		buf[buf_size++] = val_offset >> 24;
	}
}


void padBuffer(char *buf, short &size) {
#pragma HLS INLINE
	short padding_size = (size + 7) / 8 * 8 - size;
	short size_t = size;
	size += padding_size;
	PAD_LOOP:
	for (int i = 0; i < 7; i++) {
#pragma HLS UNROLL
		if (i < padding_size)
			buf[size_t + i] = 0;
	}
}

void mergeBuffer(
	char *dst_buf,
	char *buf0, short size0, char *val_buf0, short val_size0,
	char *buf1, short size1, char *val_buf1, short val_size1,
	char *buf2, short size2, char *val_buf2, short val_size2,
	char *buf3, short size3, char *val_buf3, short val_size3,
	char *buf4, short size4, char *val_buf4, short val_size4,
	char *buf5, short size5, char *val_buf5, short val_size5
) {
	if (size0 != 0)	{
		memcpy(dst_buf, buf0, size0);
		dst_buf += size0;
	}
	if (val_size0 != 0)	{
		memcpy(dst_buf, val_buf0, val_size0);
		dst_buf += val_size0;
	}
	if (size1 != 0)	{
		memcpy(dst_buf, buf1, size1);
		dst_buf += size1;
	}
	if (val_size1 != 0)	{
		memcpy(dst_buf, val_buf1, val_size1);
		dst_buf += val_size1;
	}
	if (size2 != 0)	{
		memcpy(dst_buf, buf2, size2);
		dst_buf += size2;
	}
	if (val_size2 != 0)	{
		memcpy(dst_buf, val_buf2, val_size2);
		dst_buf += val_size2;
	}
	if (size3 != 0)	{
		memcpy(dst_buf, buf3, size3);
		dst_buf += size3;
	}
	if (val_size3 != 0)	{
		memcpy(dst_buf, val_buf3, val_size3);
		dst_buf += val_size3;
	}
	if (size4 != 0)	{
		memcpy(dst_buf, buf4, size4);
		dst_buf += size4;
	}
	if (val_size4 != 0)	{
		memcpy(dst_buf, val_buf4, val_size4);
		dst_buf += val_size4;
	}
	if (size5 != 0)	{
		memcpy(dst_buf, buf5, size5);
		dst_buf += size5;
	}
	if (val_size5 != 0)	{
		memcpy(dst_buf, val_buf5, val_size5);
		dst_buf += val_size5;
	}
}

void dut(char src[SRC_INTERFACE_SZ], int size, char dst[DST_INTERFACE_SZ]) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=axis register_mode=both port=src register
#pragma HLS INTERFACE mode=axis register_mode=both port=dst register
	char dst_buf0[8000], dst_buf1[8000], dst_buf2[8000], dst_buf3[8000], dst_buf4[8000], dst_buf5[8000];
	char val_buf0[32000], val_buf1[32000], val_buf2[32000], val_buf3[32000], val_buf4[32000], val_buf5[32000];
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf0
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf1
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf2
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf3
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf4
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=dst_buf5
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf0
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf1
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf2
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf3
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf4
#pragma HLS ARRAY_PARTITION dim=1 factor=8 type=cyclic variable=val_buf5
	short size0 = 0, size1 = 0, size2 = 0, size3 = 0, size4 = 0, size5 = 0;
	short val_size0 = 0, val_size1 = 0, val_size2 = 0, val_size3 = 0, val_size4 = 0, val_size5 = 0;
	bool new_line0 = true, new_line1 = true, new_line2 = true, new_line3 = true, new_line4 = true, new_line5 = true;

#pragma HLS DEPENDENCE dependent=false type=inter variable=src

	obj_wrapper_t obj;
	OBJ_LOOP:
	for (int i = 0; i < size; i += 11) {
#pragma HLS LOOP_TRIPCOUNT max=9497 avg=9497 min=9497
#pragma HLS PIPELINE
		OBJ_LOAD_LOOP:
		for (int j = 0; j < 11; j++) {
			obj.bytes[j] = src[i+j];
		}
		objField2Arrow(obj, 0, new_line0, dst_buf0, size0, val_buf0, val_size0);
		objField2Arrow(obj, 1, new_line1, dst_buf1, size1, val_buf1, val_size1);
		objField2Arrow(obj, 2, new_line2, dst_buf2, size2, val_buf2, val_size2);
		objField2Arrow(obj, 3, new_line3, dst_buf3, size3, val_buf3, val_size3);
		objField2Arrow(obj, 4, new_line4, dst_buf4, size4, val_buf4, val_size4);
		objField2Arrow(obj, 5, new_line5, dst_buf5, size5, val_buf5, val_size5);
	}

	postVector(dst_buf0, size0, val_size0);
	postVector(dst_buf1, size1, val_size1);
	postVector(dst_buf2, size2, val_size2);
	postVector(dst_buf3, size3, val_size3);
	postVector(dst_buf4, size4, val_size4);
	postVector(dst_buf5, size5, val_size5);

	padBuffer(dst_buf0, size0);
	padBuffer(val_buf0, val_size0);
	padBuffer(dst_buf1, size1);
	padBuffer(val_buf1, val_size1);
	padBuffer(dst_buf2, size2);
	padBuffer(val_buf2, val_size2);
	padBuffer(dst_buf3, size3);
	padBuffer(val_buf3, val_size3);
	padBuffer(dst_buf4, size4);
	padBuffer(val_buf4, val_size4);
	padBuffer(dst_buf5, size5);
	padBuffer(val_buf5, val_size5);

	mergeBuffer(
		dst,
		dst_buf0, size0, val_buf0, val_size0,
		dst_buf1, size1, val_buf1, val_size1,
		dst_buf2, size2, val_buf2, val_size2,
		dst_buf3, size3, val_buf3, val_size3,
		dst_buf4, size4, val_buf4, val_size4,
		dst_buf5, size5, val_buf5, val_size5
	);
}
