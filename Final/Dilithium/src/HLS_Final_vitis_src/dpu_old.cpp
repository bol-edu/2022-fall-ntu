#include <stdint.h>
#include "./clean/params.h"
#include "dpu.h"
static const int32_t zetas[N] = {
		   0,    25847, -2608894,  -518909,   237124,  -777960,  -876248,   466468,
	 1826347,  2353451,  -359251, -2091905,  3119733, -2884855,  3111497,  2680103,
	 2725464,  1024112, -1079900,  3585928,  -549488, -1119584,  2619752, -2108549,
	-2118186, -3859737, -1399561, -3277672,  1757237,   -19422,  4010497,   280005,
	 2706023,    95776,  3077325,  3530437, -1661693, -3592148, -2537516,  3915439,
	-3861115, -3043716,  3574422, -2867647,  3539968,  -300467,  2348700,  -539299,
	-1699267, -1643818,  3505694, -3821735,  3507263, -2140649, -1600420,  3699596,
	  811944,   531354,   954230,  3881043,  3900724, -2556880,  2071892, -2797779,
	-3930395, -1528703, -3677745, -3041255, -1452451,  3475950,  2176455, -1585221,
	-1257611,  1939314, -4083598, -1000202, -3190144, -3157330, -3632928,   126922,
	 3412210,  -983419,  2147896,  2715295, -2967645, -3693493,  -411027, -2477047,
	 -671102, -1228525,   -22981, -1308169,  -381987,  1349076,  1852771, -1430430,
	-3343383,   264944,   508951,  3097992,    44288, -1100098,   904516,  3958618,
	-3724342,    -8578,  1653064, -3249728,  2389356,  -210977,   759969, -1316856,
	  189548, -3553272,  3159746, -1851402, -2409325,  -177440,  1315589,  1341330,
	 1285669, -1584928,  -812732, -1439742, -3019102, -3881060, -3628969,  3839961,
	 2091667,  3407706,  2316500,  3817976, -3342478,  2244091, -2446433, -3562462,
	  266997,  2434439, -1235728,  3513181, -3520352, -3759364, -1197226, -3193378,
	  900702,  1859098,   909542,   819034,   495491, -1613174,   -43260,  -522500,
	 -655327, -3122442,  2031748,  3207046, -3556995,  -525098,  -768622, -3595838,
	  342297,   286988, -2437823,  4108315,  3437287, -3342277,  1735879,   203044,
	 2842341,  2691481, -2590150,  1265009,  4055324,  1247620,  2486353,  1595974,
	-3767016,  1250494,  2635921, -3548272, -2994039,  1869119,  1903435, -1050970,
	-1333058,  1237275, -3318210, -1430225,  -451100,  1312455,  3306115, -1962642,
	-1279661,  1917081, -2546312, -1374803,  1500165,   777191,  2235880,  3406031,
	 -542412, -2831860, -1671176, -1846953, -2584293, -3724270,   594136, -3776993,
	-2013608,  2432395,  2454455,  -164721,  1957272,  3369112,   185531, -1207385,
	-3183426,   162844,  1616392,  3014001,   810149,  1652634, -3694233, -1799107,
	-3038916,  3523897,  3866901,   269760,  2213111,  -975884,  1717735,   472078,
	 -426683,  1723600, -1803090,  1910376, -1667432, -1104333,  -260646, -3833893,
	-2939036, -2235985,  -420899, -2286327,   183443,  -976891,  1612842, -3545687,
	 -554416,  3919660,   -48306, -1362209,  3937738,  1400424,  -846154,  1976782
};

DPU::DPU(){
	for(int i=0;i<N;i++) pMem[Q_ADDR][i] = Q;
	for(int i=0;i<N;i++) pMem[QINV_ADDR][i] = QINV;
	for(int i=0;i<8;i++){
		for(int j=0;j<N;j++){
			if(j<NH) pMem[NTTC_ADDR+i][j] = MONT;
			else pMem[NTTC_ADDR+i][j] = zetas[(1<<i) + ((j-NH) % (1<<i))];
		}
	}
	for(int i=7;i>=0;i--){
		for(int j=0;j<N;j++){
			if(j<NH) pMem[INTTC_ADDR+(7-i)][j] = MONT;
			else pMem[INTTC_ADDR+(7-i)][j] = -zetas[(1<<(i+1)) - 1 - ((j-NH) % (1<<i))];
		}
	}
	for(int i=0;i<N;i++) pMem[MONT2_ADDR][i] = 41978;
	for(int i=0;i<N;i++) pMem[DECO1_ADDR][i] = 1025;
	for(int i=0;i<N;i++) pMem[DECO2_ADDR][i] = 2*GAMMA2;	
}
void DPU::read_p1(uint8_t addr){
	for(int i=0;i<N;i++) {
#pragma HLS unroll factor=256
		p1[i] = pMem[addr][i];
	}
}

void DPU::read_p2(uint8_t addr){
	for(int i=0;i<N;i++){
#pragma HLS unroll factor=256
		p2[i] = pMem[addr][i];	
	} 
}

void DPU::read_p5(uint8_t addr){
	for(int i=0;i<N;i++) p5[i] = pMem[addr][i];	
}

void DPU::write_p3(uint8_t addr){
	for(int i=0;i<N;i++){
#pragma HLS unroll factor=256
		pMem[addr][i] = p3[i];
	}
}

void DPU::write_p4(uint8_t addr){
	for(int i=0;i<N;i++){
#pragma HLS unroll factor=256
		pMem[addr][i] = p4[i];
	}
}

void DPU::write_p5(uint8_t addr){
	for(int i=0;i<N;i++) pMem[addr][i] = p5[i];	
}

void DPU::write_Mem(int32_t* a, uint8_t addr){
	for(int i=0;i<N;i++) pMem[addr][i] = a[i];	
}
void DPU::read_Mem(int32_t* a, uint8_t addr){
	for(int i=0;i<N;i++) a[i] = pMem[addr][i];	
}

void DPU::read_ntt(uint8_t addr){
	for(int i=0;i<N;i++){
#pragma HLS unroll factor=256
		int32_t tmp = pMem[addr][i];
		if(i<NH){
			p1[2*i] = tmp;
			p1[2*i+1] = tmp;
		}
		else{
			p2[2*(i-NH)] = tmp;
			p2[2*(i-NH)+1] = tmp;
		}
	}
}

void DPU::read_intt(uint8_t addr){
	for(int i=0;i<N;i++){
#pragma HLS unroll factor=256
		int32_t tmp = pMem[addr][i];
		if(i%2==0){
			p1[(i>>1)] = tmp;
			p1[(i>>1)+NH] = tmp;
		}
		else{
			p2[(i>>1)] = tmp;
			p2[(i>>1)+NH] = tmp;
		}
	}
}

void DPU::dpu_func(const uint8_t addr1, const uint8_t addr2, const uint8_t addr3, uint8_t type, uint8_t arg, uint8_t itr){
#pragma HLS ALLOCATION function instances=dpu_unit limit=1
#pragma HLS ALLOCATION function instances=read_p1 limit=1
#pragma HLS ALLOCATION function instances=read_p2 limit=1
#pragma HLS ALLOCATION function instances=write_p3 limit=1
#pragma HLS ALLOCATION function instances=write_p4 limit=1
	switch(type){
		case FUNC_ADD:
FUNC_ADD_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				read_p2(addr2+i);
				dpu_unit(OP_ADD);
				write_p3(addr3+i);
			}
			break;

		/*case FUNC_SUB:
FUNC_SUB_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				read_p2(addr2+i);
				dpu_unit(OP_SUB);
				write_p3(addr3+i);
			}
			break;*/

		case FUNC_RD:
			// t = (a + (1 << 22)) >> 23;
FUNC_RD_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				dpu_unit(OP_RD32);
				write_p3(TMP_ADDR+i);
			}

			//t*Q
			read_p2(Q_ADDR);
FUNC_RD_LOOP2:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i);
			}

			//a - t*Q;
FUNC_RD_LOOP3:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				read_p2(TMP_ADDR+i);
				dpu_unit(OP_SUB);
				write_p3(addr1+i);
			}
			break;

		case FUNC_MONTMUL:
			//64bit mul
FUNC_MONTMUL_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1);
				read_p2(addr2+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i);   //LSBs
				write_p4(TMP_ADDR+i+K); //MSBs = t2
			}

			// t = (int32_t)a*QINV;
			read_p2(QINV_ADDR);
FUNC_MONTMUL_LOOP2:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i);
			}

			// t1 = (int32_t)(((int64_t)t*Q)>>32);
			read_p2(Q_ADDR);
FUNC_MONTMUL_LOOP3:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_MUL);
				write_p4(TMP_ADDR+i);
			}

			//return t2-t1
FUNC_MONTMUL_LOOP4:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(TMP_ADDR+i+K);
				read_p2(TMP_ADDR+i);
				dpu_unit(OP_SUB);
				write_p3(addr3+i);
			}
			break;

		case FUNC_MATMUL:
			//64bit mul
FUNC_MATMUL_LOOP0:for(int k=0;k<K;k++){
FUNC_MATMUL_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(addr1+L*k+i);
					read_p2(addr2+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);    //LSBs
					write_p4(TMP_ADDR+i+K); //MSBs = t2
				}

				// t = (int32_t)a*QINV;
				read_p2(QINV_ADDR);
FUNC_MATMUL_LOOP2:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);
				}

				// t1 = (int32_t)(((int64_t)t*Q)>>32);
				read_p2(Q_ADDR);
FUNC_MATMUL_LOOP3:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p4(TMP_ADDR+i);
				}

				// t2 = t2-t1
FUNC_MATMUL_LOOP4:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i+K);
					read_p2(TMP_ADDR+i);
					dpu_unit(OP_SUB);
					write_p3(TMP_ADDR+i);
				}
				
				// Accumulate
FUNC_MATMUL_LOOP5:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					read_p2(addr3+k);
					if (i==0) dpu_unit(OP_PASS);
					else dpu_unit(OP_ADD);
					write_p3(addr3+k);
				}
			}
			break;

		case FUNC_CADDQ:
FUNC_CADDQ_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				dpu_unit(OP_CADDQ);
				write_p3(addr1+i);
			}
			break;

		case FUNC_POW2ROUND: //addr1 (a) -> addr2 (a1), addr3 (a0) 
FUNC_POW2ROUND_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
				read_p1(addr1+i);
				dpu_unit(OP_POW2ROUND);
				write_p3(addr2+i); 
				write_p4(addr3+i); 
			}
			break;
		case FUNC_NTT:
			//64bit mul
FUNC_NTT_LOOP0:for(int k=0;k<8;k++){
				read_p2(NTTC_ADDR+k);
FUNC_NTT_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(addr1+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);   //LSBs
					write_p4(TMP_ADDR+i+K); //MSBs = t2
				}

				// t = (int32_t)a*QINV;
				read_p2(QINV_ADDR);
FUNC_NTT_LOOP2:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);
				}

				// t1 = (int32_t)(((int64_t)t*Q)>>32);
				read_p2(Q_ADDR);
FUNC_NTT_LOOP3:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p4(TMP_ADDR+i);
				}

				// t1 = t2 - t1
FUNC_NTT_LOOP4:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i+K);
					read_p2(TMP_ADDR+i);
					dpu_unit(OP_SUB);
					write_p3(addr1+i);
				}
				
				// ntt_add
FUNC_NTT_LOOP5:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_ntt(addr1+i);
					dpu_unit(OP_NTT);
					write_p3(addr1+i);
				}
			}
			break;
		case FUNC_INTT:
			//64bit mul
FUNC_INTT_LOOP0:for(int k=0;k<8;k++){
				// intt_add
FUNC_INTT_LOOP1:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_intt(addr1+i);
					dpu_unit(OP_INTT);
					write_p3(addr1+i);
				}

				read_p2(INTTC_ADDR+k);
FUNC_INTT_LOOP2:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(addr1+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);   //LSBs
					write_p4(TMP_ADDR+i+K); //MSBs = t2
				}

				// t = (int32_t)a*QINV;
				read_p2(QINV_ADDR);
FUNC_INTT_LOOP3:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p3(TMP_ADDR+i);
				}

				// t1 = (int32_t)(((int64_t)t*Q)>>32);
				read_p2(Q_ADDR);
FUNC_INTT_LOOP4:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i);
					dpu_unit(OP_MUL);
					write_p4(TMP_ADDR+i);
				}

				// t1 = t2 - t1
FUNC_INTT_LOOP5:for(int i=0;i<itr;i++){
#pragma HLS DEPENDENCE dependent=false type=inter variable=pMem
					read_p1(TMP_ADDR+i+K);
					read_p2(TMP_ADDR+i);
					dpu_unit(OP_SUB);
					write_p3(addr1+i);
				}
			}
			break;
		/*case FUNC_SFTL:
			for(int i=0;i<itr;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_SFTL);
				write_p3(addr1+i);  
			}
			break;
		case FUNC_DECOMP: //addr1 (a) -> addr1 (a1), addr2 (a0) 
			//tmp = a
			//a1  = (a + 127) >> 7;
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_PASS);
				write_p3(TMP_ADDR+i);
				dpu_unit(OP_DECOMP1);
				write_p3(addr1+i);
			}

			//a1 = a1*1025
			read_p2(DECO1_ADDR);
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_MUL);
				write_p3(addr1+i);
			}

			//a1 = (a1 + (1 << 21)) >> 22) & 15;
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_DECOMP2);
				write_p3(addr1+i);
			}
			//tmp2 = a1*2*GAMMA2
			read_p2(DECO2_ADDR);
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i+K);
			}
			//*a0  = tmp - tmp2;
			for(int i=0;i<K;i++){ 
				read_p1(TMP_ADDR+i);
				read_p2(TMP_ADDR+i+K);
				dpu_unit(OP_SUB);
				write_p3(addr2+i);
			}

			// tmp = (((Q-1)/2 - *a0) >> 31) & Q;
			for(int i=0;i<K;i++){ 
				read_p1(addr2+i);
				dpu_unit(OP_DECOMP3);
				write_p3(TMP_ADDR+i);
			}
			
			//*a0 -= tmp
			for(int i=0;i<itr;i++){
				read_p1(addr2+i);
				read_p2(TMP_ADDR+i);
				dpu_unit(OP_SUB);
				write_p3(addr2+i);
			}
			break;
		case FUNC_MHINT: //addr1(a0), addr2 (a1) --> addr3 (h) 
			//a1  = (a + 127) >> 7;
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				read_p2(addr2+i);
				dpu_unit(OP_MHINT);
				write_p3(addr3+i);
			}
			break;
		case FUNC_UHINT: //addr1(a), addr2 (h) --> addr3 (b)
			//Deompose addr1(a) --> TMP_ADDR (a1), TMP_ADDR+2*K (a2)  
			//a1  = (a + 127) >> 7;
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				dpu_unit(OP_DECOMP1);
				write_p3(TMP_ADDR+i);
			}

			//a1 = a1*1025
			read_p2(DECO1_ADDR);
			for(int i=0;i<K;i++){ 
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i);
			}
			//a1 = (a1 + (1 << 21)) >> 22) & 15;
			for(int i=0;i<K;i++){ 
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_DECOMP2);
				write_p3(TMP_ADDR+i);
			}
			//tmp = a1*2*GAMMA2
			read_p2(DECO2_ADDR);
			for(int i=0;i<K;i++){ 
				read_p1(TMP_ADDR+i);
				dpu_unit(OP_MUL);
				write_p3(TMP_ADDR+i+K);
			}
			//*a0  = a - tmp;
			for(int i=0;i<K;i++){ 
				read_p1(addr1+i);
				read_p2(TMP_ADDR+i+K);
				dpu_unit(OP_SUB);
				write_p3(TMP_ADDR+i+2*K);
			}
			// tmp = (((Q-1)/2 - *a0) >> 31) & Q;
			for(int i=0;i<K;i++){ 
				read_p1(TMP_ADDR+i+2*K);
				dpu_unit(OP_DECOMP3);
				write_p3(TMP_ADDR+i+K);
			}
			
			//*a0 -= tmp
			for(int i=0;i<itr;i++){
				read_p1(TMP_ADDR+i+2*K);
				read_p2(TMP_ADDR+i+K);
				dpu_unit(OP_SUB);
				write_p3(TMP_ADDR+i+2*K);
			}

			//OP_UHINT1: p1=h, p2=a0 --> p3=command
			for(int i=0;i<itr;i++){
				read_p1(addr2+i);
				read_p2(TMP_ADDR+i+2*K);
				dpu_unit(OP_UHINT1);
				write_p3(addr3+i);
			}

			//OP_UHINT2: p1=command, p2=a1 --> p3=result
			for(int i=0;i<itr;i++){
				read_p1(addr3+i);
				read_p2(TMP_ADDR+i);
				dpu_unit(OP_UHINT2);
				write_p3(addr3+i);
			}
			break;*/
	}
}

void DPU::dpu_unit(uint8_t type){
DPU_UNIT_LOOP:for(int i=0;i<N;i++) {
#pragma HLS unroll factor=256
		int64_t tmp;
		switch(type){
			case OP_ADD:
				p3[i] = p1[i] + p2[i];
				break;
			case OP_SUB:
				p3[i] = p1[i] - p2[i];
				break;
			case OP_MUL:
				tmp = (int64_t)p1[i]*p2[i];
				p3[i] = tmp;
				p4[i] = (int32_t)(tmp>>32);
				break;
			case OP_RD32:
				p3[i] = (p1[i] + (1 << 22)) >> 23;
				break;
			case OP_CADDQ:
				p3[i] = p1[i] + ((p1[i] >> 31) & Q);
				break;
			case OP_PASS:
				p3[i] = p1[i];
				break;
			case OP_POW2ROUND://p1[i](a) --> p3[i](a1), p4[i](a0)
				p3[i] = (p1[i] + (1 << (D-1)) - 1) >> D;
				p4[i] = p1[i] - (p3[i] << D);
				break;
			case OP_NTT:
				if(i%2==0) p3[i] = p1[i] + p2[i];
				else p3[i] = p1[i] - p2[i];
				break;
			case OP_INTT:
				if(i<NH) p3[i] = p1[i] + p2[i];
				else p3[i] = p1[i] - p2[i];
				break;
			/*case OP_SFTL:
				p3[i] = p1[i] << D;
				break;
			case OP_DECOMP1:
				p3[i] = (p1[i] + 127) >> 7;
				break;
			case OP_DECOMP2:
				p3[i] = ((p1[i] + (1 << 21)) >> 22) & 15;
				break;
			case OP_DECOMP3:
				p3[i] = (((Q-1)/2 - p1[i]) >> 31) & Q;
				break;
			case OP_MHINT:
				if((p1[i] <= GAMMA2) || (p1[i] > (Q - GAMMA2)) || ((p1[i] == (Q - GAMMA2)) && (p2[i] == 0))) p3[i] = 0;
				else p3[i] = 1;
				break;
			case OP_UHINT1://p1=h, p2=a0 --> p3=command
				if     (p1[i]==0) p3[i] = 0;
				else if(p2[i]>0)  p3[i] = 1;
				else              p3[i] = 2;
				break;
			case OP_UHINT2://p1=command, p2=a1 --> p3=result
				if     (p1[i]==0) p3[i] = p2[i];
				else if(p1[i]==1) p3[i] = (p2[i]+1)&15;
				else              p3[i] = (p2[i]-1)&15;
				break;*/
		}
	}
}

void DPU::dpu_pack(const uint8_t addr, uint8_t rb[MAXBYTES], uint8_t pb[MAXBYTES], int ptrs, uint8_t type, const int itr){
	static int ptr;
	ptr = ptrs;
	switch(type){
		case T1_PACK:
			for(int j=0; j<K; j++){
				read_p5(addr+j);
				for(int i=0; i < N/4; ++i) {
					pb[ptr+0] = (p5[4*i+0] >> 0);
					pb[ptr+1] = (p5[4*i+0] >> 8) | (p5[4*i+1] << 2);
					pb[ptr+2] = (p5[4*i+1] >> 6) | (p5[4*i+2] << 4);
					pb[ptr+3] = (p5[4*i+2] >> 4) | (p5[4*i+3] << 6);
					pb[ptr+4] = (p5[4*i+3] >> 2);
					ptr += 5;
				}
			}
			break;
		case T1_UNPACK:
			for(int j=0; j<K; j++){
				for(int i = 0; i < N/4; ++i) {
					p5[4*i+0] = (((uint32_t)pb[ptr+0] >> 0) | ((uint32_t)pb[ptr+1] << 8)) & 0x3FF;
					p5[4*i+1] = (((uint32_t)pb[ptr+1] >> 2) | ((uint32_t)pb[ptr+2] << 6)) & 0x3FF;
					p5[4*i+2] = (((uint32_t)pb[ptr+2] >> 4) | ((uint32_t)pb[ptr+3] << 4)) & 0x3FF;
					p5[4*i+3] = (((uint32_t)pb[ptr+3] >> 6) | ((uint32_t)pb[ptr+4] << 2)) & 0x3FF;
					ptr += 5;
				}
				write_p5(addr+j);
			}
			break;
		case T0_PACK:
			for(int j=0; j<K; j++){
				read_p5(addr+j);
				for(int i = 0; i < N/8; ++i) {
					uint32_t t[8];
					t[0] = (1 << (D-1)) - p5[8*i+0];
					t[1] = (1 << (D-1)) - p5[8*i+1];
					t[2] = (1 << (D-1)) - p5[8*i+2];
					t[3] = (1 << (D-1)) - p5[8*i+3];
					t[4] = (1 << (D-1)) - p5[8*i+4];
					t[5] = (1 << (D-1)) - p5[8*i+5];
					t[6] = (1 << (D-1)) - p5[8*i+6];
					t[7] = (1 << (D-1)) - p5[8*i+7];
					pb[ptr+ 0]  =  t[0];
					pb[ptr+ 1]  =  t[0] >>  8;
					pb[ptr+ 1] |=  t[1] <<  5;
					pb[ptr+ 2]  =  t[1] >>  3;
					pb[ptr+ 3]  =  t[1] >> 11;
					pb[ptr+ 3] |=  t[2] <<  2;
					pb[ptr+ 4]  =  t[2] >>  6;
					pb[ptr+ 4] |=  t[3] <<  7;
					pb[ptr+ 5]  =  t[3] >>  1;
					pb[ptr+ 6]  =  t[3] >>  9;
					pb[ptr+ 6] |=  t[4] <<  4;
					pb[ptr+ 7]  =  t[4] >>  4;
					pb[ptr+ 8]  =  t[4] >> 12;
					pb[ptr+ 8] |=  t[5] <<  1;
					pb[ptr+ 9]  =  t[5] >>  7;
					pb[ptr+ 9] |=  t[6] <<  6;
					pb[ptr+10]  =  t[6] >>  2;
					pb[ptr+11]  =  t[6] >> 10;
					pb[ptr+11] |=  t[7] <<  3;
					pb[ptr+12]  =  t[7] >>  5;
					ptr += 13;
				}
			}
			break;
		case T0_UNPACK:
			for(int j=0; j<K; j++){
				for(int i = 0; i < N/8; ++i) {
					uint32_t t[8];
    				t[0]  = (((uint32_t)pb[ptr+  0]     ) | ((uint32_t)pb[ptr+ 1] << 8))                                 & 0x1FFF;
    				t[1]  = (((uint32_t)pb[ptr+  1] >> 5) | ((uint32_t)pb[ptr+ 2] << 3) | ((uint32_t)pb[ptr+ 3] << 11))  & 0x1FFF;
    				t[2]  = (((uint32_t)pb[ptr+  3] >> 2) | ((uint32_t)pb[ptr+ 4] << 6))                                 & 0x1FFF;
    				t[3]  = (((uint32_t)pb[ptr+  4] >> 7) | ((uint32_t)pb[ptr+ 5] << 1) | ((uint32_t)pb[ptr+ 6] <<  9))  & 0x1FFF;
    				t[4]  = (((uint32_t)pb[ptr+  7] >> 4) | ((uint32_t)pb[ptr+ 7] << 4) | ((uint32_t)pb[ptr+ 8] << 12))  & 0x1FFF;
    				t[5]  = (((uint32_t)pb[ptr+  8] >> 1) | ((uint32_t)pb[ptr+ 9] << 7))                                 & 0x1FFF;
    				t[6]  = (((uint32_t)pb[ptr+  9] >> 6) | ((uint32_t)pb[ptr+10] << 2) | ((uint32_t)pb[ptr+11] << 10))  & 0x1FFF;
    				t[7]  = (((uint32_t)pb[ptr+ 11] >> 3) | ((uint32_t)pb[ptr+12] << 5))                                 & 0x1FFF;

    				p5[8*i+0] = (1 << (D-1)) - t[0];
    				p5[8*i+1] = (1 << (D-1)) - t[1];
    				p5[8*i+2] = (1 << (D-1)) - t[2];
    				p5[8*i+3] = (1 << (D-1)) - t[3];
    				p5[8*i+4] = (1 << (D-1)) - t[4];
    				p5[8*i+5] = (1 << (D-1)) - t[5];
    				p5[8*i+6] = (1 << (D-1)) - t[6];
    				p5[8*i+7] = (1 << (D-1)) - t[7];
    				ptr += 13;
				}
				write_p5(addr+j);
			}
			break;
		case Z_PACK:
			for(int j=0; j<L; j++){
				read_p5(addr+j);
				for(int i = 0; i < N/2; ++i) {
					uint32_t t[2];
					t[0] = GAMMA1 - p5[2*i+0];
					t[1] = GAMMA1 - p5[2*i+1];
					pb[ptr+0]  = t[0];
					pb[ptr+1]  = t[0] >> 8;
					pb[ptr+2]  = t[0] >> 16;
					pb[ptr+2] |= t[1] << 4;
					pb[ptr+3]  = t[1] >> 4;
					pb[ptr+4]  = t[1] >> 12;
					ptr += 5;
				}
			}
			break;
		case Z_UNPACK:
			for(int j=0; j<L; j++){
				for(int i = 0; i < N/2; ++i) {
					uint32_t t[2];
    				t[0]  = (((uint32_t)pb[ptr+0]     ) | ((uint32_t)pb[ptr+1] << 8) | ((uint32_t)pb[ptr+2] << 16)) & 0xFFFFF;
    				t[1]  = (((uint32_t)pb[ptr+2] >> 4) | ((uint32_t)pb[ptr+3] << 4) | ((uint32_t)pb[ptr+4] << 12)) & 0xFFFFF;
    				p5[2*i+0] = GAMMA1 - t[0];
    				p5[2*i+1] = GAMMA1 - t[1];
    				ptr += 5;
				}
				write_p5(addr+j);
			}
			break;
		case ETA_PACK:
			for(int j=0; j<itr; j++){
				read_p5(addr+j);
				for(int i = 0; i < N/2; ++i) {
					uint32_t t[2];
					t[0] = ETA - p5[2*i+0];
					t[1] = ETA - p5[2*i+1];
					pb[ptr] = t[0] | (t[1] << 4);
					ptr += 1;
				}
			}
			break;
		case ETA_UNPACK:
			for(int j=0; j<itr; j++){
				for(int i = 0; i < N/2; ++i) {
					uint32_t t[2];
					t[0] = pb[ptr] & 0x0F;
					t[1] = pb[ptr] >> 4;
					p5[2*i+0] = ETA - t[0];
					p5[2*i+1] = ETA - t[1];
					ptr += 1;
				}
				write_p5(addr+j);
			}
			break;
		case W1_PACK:
			for(int j=0; j<K; j++){
				read_p5(addr+j);
  				for(int i = 0; i < N/2; ++i){
  					pb[ptr] = p5[2*i+0] | (p5[2*i+1] << 4);
  					ptr += 1;
  				}
			}
			break;

		/*case BYTE_PACK:
			for(int j=0; j<MAXBYTES; j++){
				pb[ptr+j] = rb[j];
				if(j>=itr) break;
			}
			break;

		case BYTE_UNPACK:
			for(int j=0; j<MAXBYTES; j++){
				rb[j] = pb[ptr+j];
				if(j>=itr) break;
			}
			break;*/

		case CHK_NORM:
			norm_err = 0;
			for(int j=0; j<itr; j++){
				read_p5(addr+j);
				for(int i = 0; i < N; ++i){
					if((p5[i] >= ptrs)||(p5[i] <= -ptrs)){
						norm_err = 1;
						break;
					}
				}
				if(norm_err==1) break;
			}
			break;

		case H_PACK:{
			unsigned int k = 0;
			for(int unsigned i = 0; i < OMEGA + K; ++i) {pb[i] = 0;}
			for(int unsigned i = 0; i < K; ++i){
				read_p5(addr+i);
				for(unsigned int j = 0; j < N; ++j) if(p5[j] != 0) pb[k++] = j;
				pb[OMEGA + i] = k;
			}
			break;}

		case H_UNPACK:{
			unsigned int k = 0;
			uint8_t* pb2 = pb + ptr;
			sig_err = 0;
			for(int unsigned i = 0; i < K; ++i){
				for(unsigned int j = 0; j < N; ++j) p5[j] = 0;
				if(pb2[OMEGA + i] < k || pb2[OMEGA + i] > OMEGA){
					sig_err = 1;
					break;
				}
				for(unsigned int j = k; j < pb2[OMEGA + i]; ++j){
					if(j > k && pb2[j] <= pb2[j-1]){
						sig_err = 1;
						break;
					}
					else p5[pb2[j]] = 1;
				}
				if(sig_err==1) break;
				write_p5(addr+i);
				k = pb2[OMEGA + i];
			}
			if(sig_err==0){
				for(unsigned int j = k; j < OMEGA; ++j){
					if(pb2[j]){
						sig_err = 1;
						break;
					}
				}
			}
			break;}

		case H_COUNT:{
			hn = 0;
			for(int j=0; j<K; j++){
				read_p5(addr+j);
  				for(int i = 0; i < N; ++i){
  					if(p5[i]==1) hn += 1;
  				}
			}
			//printf("%d\n",hn);
			break;}
	}
}



