
#include <hls_stream.h>
typedef float DTYPE;
#define SIZE 256 		/* SIZE OF DFT */
//#define ONE_PORT
//#define USE_DATAFLOW
#define STREAM
#ifdef ONE_PORT
	void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE]);
#else
#ifdef STREAM
	void dft(hls::stream<DTYPE> *real_sample, hls::stream<DTYPE> *imag_sample, hls::stream<DTYPE> *real_out, hls::stream<DTYPE> *image_out);
#else
	void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE real_out[SIZE], DTYPE image_out[SIZE]);
#endif
#endif

