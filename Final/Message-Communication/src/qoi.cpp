#include "qoi.hpp"

void qoi_encode(Byte img[BUF_SIZE], unsigned int width, unsigned int height, Byte out[BUF_SIZE]) {
	unsigned int buf_idx = 0;
	qoi_header header(width, height);
	for (int i = 0; i < 14; i++)
		out[buf_idx++] = header.bytes[i];

	short prev_r = 0, prev_g = 0, prev_b = 0;
	ap_uint<24> index_mem[64];
	for (int i = 0; i < 64; i++)
		index_mem[i] = 0;
	unsigned int runs = 0;

	for (int i = 0; i < width*height*3; i += 3) {
		#pragma HLS LOOP_TRIPCOUNT max=49152 min=48
		short r = img[i];
		short g = img[i+1];
		short b = img[i+2];
		ap_uint<24> cur_pixel = (r << 16) | (g << 8) | b;
		Byte hash = (r*3 + g*5 + b*7 + 255*11) % 64;
		short dr = r - prev_r;
		short dg = g - prev_g;
		short db = b - prev_b;
		short drg = dr - dg;
		short dbg = db - dg;

		if (r == prev_r && g == prev_g && b == prev_b) {
			// Run
			runs++;
		} else {
			// Run
			if (runs > 0 || runs == 63) {
				out[buf_idx++] = 191 + runs;
				runs = 0;
			}

			if (index_mem[hash] == cur_pixel) {
				// Previous seen
				out[buf_idx++] = hash;
			} else if (dr >= -2 && dr <= 1 && dg >= -2 && dg <= 1 && db >= -2 && db <= 1) {
				// Diff
				out[buf_idx++] = 64 + ((dr+2)<<4) + ((dg+2)<<2) + (db+2);
			} else if (dg >= -32 && dg <= 31 && drg >= -8 && drg <= 7 && dbg >= -8 && dbg <= 7) {
				// Luma
				out[buf_idx++] = 160 + dg;
				out[buf_idx++] = (drg+8)<<4 | (dbg+8);
			} else {
				// Full
				out[buf_idx++] = 254;
				out[buf_idx++] = r;
				out[buf_idx++] = g;
				out[buf_idx++] = b;
			}
		}
		index_mem[hash] = cur_pixel;
		prev_r = r;
		prev_g = g;
		prev_b = b;
	}

	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 0;
	out[buf_idx++] = 1;
}


void qoi_decode(Byte in[BUF_SIZE], Byte img[BUF_SIZE]) {
	unsigned int buf_idx = 0;
	buf_idx += 4;
	unsigned int width = 0;
	unsigned int height = 0;
	for (int i = 0; i < 4; i++)
		width = (width << 1) | in[buf_idx++];
	for (int i = 0; i < 4; i++)
		height = (height << 1) | in[buf_idx++];
	buf_idx += 2;

	short prev_r = 0, prev_g = 0, prev_b = 0;
	ap_uint<24> index_mem[64];
	for (int i = 0; i < 64; i++)
		index_mem[i] = 0;
	short dr = 0, dg = 0, db = 0, drg = 0, dbg = 0;
	Byte runs = 0;

	for (int i = 0; i < width*height; i++) {
		short r = 0, g = 0, b = 0;
		if (runs > 0) {
			r = prev_r;
			g = prev_g;
			b = prev_b;
			runs--;
		} else {
			if (buf_idx >= BUF_SIZE) break;
			Byte byte = in[buf_idx++];
			ap_uint<2> tag = byte >> 6;
			if (byte == 254) {
				// Full
				if (buf_idx >= BUF_SIZE) break;
				r = in[buf_idx++];
				if (buf_idx >= BUF_SIZE) break;
				g = in[buf_idx++];
				if (buf_idx >= BUF_SIZE) break;
				b = in[buf_idx++];
			} else if (tag == 0) {
				// Hash
				if (byte > 64)
					byte = 64;
				ap_uint<24> pix = index_mem[byte];
				r = pix >> 16;
				g = (pix >> 8) & 0xFF;
				b = pix & 0xFF;
			} else if (tag == 1) {
				// Diff
				dr = ((byte >> 4) & 0x3) - 2;
				dg = ((byte >> 2) & 0x3) - 2;
				db = (byte & 0x3) - 2;
				r = prev_r + dr;
				g = prev_g + dg;
				b = prev_b + db;
			} else if (tag == 2) {
				// Luma
				dg = (byte & 0x3F) - 32;
				if (buf_idx >= BUF_SIZE) break;
				byte = in[buf_idx++];
				drg = ((byte >> 4) & 0xF) - 8;
				dbg = (byte & 0xF) - 8;
				dr = drg + dg;
				db = dbg + dg;
				r = prev_r + dr;
				g = prev_g + dg;
				b = prev_b + db;
			} else {
				// Runs
				runs = byte & 0x3F;
				r = prev_r;
				g = prev_g;
				b = prev_b;
			}
		}
		img[i*3] = r;
		img[i*3+1] = g;
		img[i*3+2] = b;
		prev_r = r;
		prev_g = g;
		prev_b = b;
		short hash = (r*3 + g*5 + b*7 + 255*11) % 64;
		ap_uint<24> cur_pixel = (r << 16) | (g << 8) | b;
		index_mem[hash] = cur_pixel;
	}
}
