# 1 "C:/9m/HLS/labb/project1/fir11/fir.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/9m/HLS/labb/project1/fir11/fir.cpp"
# 13 "C:/9m/HLS/labb/project1/fir11/fir.cpp"
# 1 "C:/9m/HLS/labb/project1/fir11/fir.h" 1
# 10 "C:/9m/HLS/labb/project1/fir11/fir.h"
const int N=11;

typedef int coef_t;
typedef int data_t;
typedef int acc_t;

void fir (
  data_t *y,
  data_t x
  );
# 14 "C:/9m/HLS/labb/project1/fir11/fir.cpp" 2

void fir (
  data_t *y,
  data_t x
  )
{
 coef_t c[N] = {53, 0, -91, 0, 313, 500, 313, 0, -91, 0,53};

 static
 data_t shift_reg[N];
 acc_t acc;
 int i;

 acc=0;
 Shift_Accum_Loop:
 for(i=N-1; i>=0; i--){
  if(i==0){
   acc+=x*c[0];
   shift_reg[0]=x;
  }else{
   shift_reg[i] = shift_reg[i-1];
   acc+=shift_reg[i]*c[i];
  }
 }
 *y = acc;
}
