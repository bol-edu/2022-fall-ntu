 
#include <ap_axi_sdata.h>
 
typedef ap_int<4> data_hdc; 

void hdc_train(data_hdc train_data[320], int train_label, data_hdc new_IM[1064], data_hdc AM_out[5][500]);
