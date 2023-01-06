#include <stdint.h>
#include <stdlib.h>
#include "./clean/params.h"
#include "spu.h"

SPU::SPU(){}

uint64_t SPU::load64(const uint8_t x[8]) {
  unsigned int i;
  uint64_t r = 0;

  for(i=0;i<8;i++)
    r |= (uint64_t)x[i] << 8*i;

  return r;
}

void SPU::store64(uint8_t x[8], uint64_t u) {
  unsigned int i;

  for(i=0;i<8;i++)
    x[i] = u >> 8*i;
}

/* Keccak round constants */
static const uint64_t KeccakF_RoundConstants[NROUNDS] = {
  (uint64_t)0x0000000000000001ULL,
  (uint64_t)0x0000000000008082ULL,
  (uint64_t)0x800000000000808aULL,
  (uint64_t)0x8000000080008000ULL,
  (uint64_t)0x000000000000808bULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008009ULL,
  (uint64_t)0x000000000000008aULL,
  (uint64_t)0x0000000000000088ULL,
  (uint64_t)0x0000000080008009ULL,
  (uint64_t)0x000000008000000aULL,
  (uint64_t)0x000000008000808bULL,
  (uint64_t)0x800000000000008bULL,
  (uint64_t)0x8000000000008089ULL,
  (uint64_t)0x8000000000008003ULL,
  (uint64_t)0x8000000000008002ULL,
  (uint64_t)0x8000000000000080ULL,
  (uint64_t)0x000000000000800aULL,
  (uint64_t)0x800000008000000aULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008080ULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008008ULL
};

void SPU::KeccakF1600_StatePermute()
{
        int round;

        uint64_t Aba, Abe, Abi, Abo, Abu;
        uint64_t Aga, Age, Agi, Ago, Agu;
        uint64_t Aka, Ake, Aki, Ako, Aku;
        uint64_t Ama, Ame, Ami, Amo, Amu;
        uint64_t Asa, Ase, Asi, Aso, Asu;
        uint64_t BCa, BCe, BCi, BCo, BCu;
        uint64_t Da, De, Di, Do, Du;
        uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
        uint64_t Ega, Ege, Egi, Ego, Egu;
        uint64_t Eka, Eke, Eki, Eko, Eku;
        uint64_t Ema, Eme, Emi, Emo, Emu;
        uint64_t Esa, Ese, Esi, Eso, Esu;

        //copyFromState(A, state)
        Aba = s[ 0];
        Abe = s[ 1];
        Abi = s[ 2];
        Abo = s[ 3];
        Abu = s[ 4];
        Aga = s[ 5];
        Age = s[ 6];
        Agi = s[ 7];
        Ago = s[ 8];
        Agu = s[ 9];
        Aka = s[10];
        Ake = s[11];
        Aki = s[12];
        Ako = s[13];
        Aku = s[14];
        Ama = s[15];
        Ame = s[16];
        Ami = s[17];
        Amo = s[18];
        Amu = s[19];
        Asa = s[20];
        Ase = s[21];
        Asi = s[22];
        Aso = s[23];
        Asu = s[24];

        for( round = 0; round < NROUNDS; round += 2 )
        {
            //    prepareTheta
            BCa = Aba^Aga^Aka^Ama^Asa;
            BCe = Abe^Age^Ake^Ame^Ase;
            BCi = Abi^Agi^Aki^Ami^Asi;
            BCo = Abo^Ago^Ako^Amo^Aso;
            BCu = Abu^Agu^Aku^Amu^Asu;

            //thetaRhoPiChiIotaPrepareTheta(round  , A, E)
            Da = BCu^ROL(BCe, 1);
            De = BCa^ROL(BCi, 1);
            Di = BCe^ROL(BCo, 1);
            Do = BCi^ROL(BCu, 1);
            Du = BCo^ROL(BCa, 1);

            Aba ^= Da;
            BCa = Aba;
            Age ^= De;
            BCe = ROL(Age, 44);
            Aki ^= Di;
            BCi = ROL(Aki, 43);
            Amo ^= Do;
            BCo = ROL(Amo, 21);
            Asu ^= Du;
            BCu = ROL(Asu, 14);
            Eba =   BCa ^((~BCe)&  BCi );
            Eba ^= (uint64_t)KeccakF_RoundConstants[round];
            Ebe =   BCe ^((~BCi)&  BCo );
            Ebi =   BCi ^((~BCo)&  BCu );
            Ebo =   BCo ^((~BCu)&  BCa );
            Ebu =   BCu ^((~BCa)&  BCe );

            Abo ^= Do;
            BCa = ROL(Abo, 28);
            Agu ^= Du;
            BCe = ROL(Agu, 20);
            Aka ^= Da;
            BCi = ROL(Aka,  3);
            Ame ^= De;
            BCo = ROL(Ame, 45);
            Asi ^= Di;
            BCu = ROL(Asi, 61);
            Ega =   BCa ^((~BCe)&  BCi );
            Ege =   BCe ^((~BCi)&  BCo );
            Egi =   BCi ^((~BCo)&  BCu );
            Ego =   BCo ^((~BCu)&  BCa );
            Egu =   BCu ^((~BCa)&  BCe );

            Abe ^= De;
            BCa = ROL(Abe,  1);
            Agi ^= Di;
            BCe = ROL(Agi,  6);
            Ako ^= Do;
            BCi = ROL(Ako, 25);
            Amu ^= Du;
            BCo = ROL(Amu,  8);
            Asa ^= Da;
            BCu = ROL(Asa, 18);
            Eka =   BCa ^((~BCe)&  BCi );
            Eke =   BCe ^((~BCi)&  BCo );
            Eki =   BCi ^((~BCo)&  BCu );
            Eko =   BCo ^((~BCu)&  BCa );
            Eku =   BCu ^((~BCa)&  BCe );

            Abu ^= Du;
            BCa = ROL(Abu, 27);
            Aga ^= Da;
            BCe = ROL(Aga, 36);
            Ake ^= De;
            BCi = ROL(Ake, 10);
            Ami ^= Di;
            BCo = ROL(Ami, 15);
            Aso ^= Do;
            BCu = ROL(Aso, 56);
            Ema =   BCa ^((~BCe)&  BCi );
            Eme =   BCe ^((~BCi)&  BCo );
            Emi =   BCi ^((~BCo)&  BCu );
            Emo =   BCo ^((~BCu)&  BCa );
            Emu =   BCu ^((~BCa)&  BCe );

            Abi ^= Di;
            BCa = ROL(Abi, 62);
            Ago ^= Do;
            BCe = ROL(Ago, 55);
            Aku ^= Du;
            BCi = ROL(Aku, 39);
            Ama ^= Da;
            BCo = ROL(Ama, 41);
            Ase ^= De;
            BCu = ROL(Ase,  2);
            Esa =   BCa ^((~BCe)&  BCi );
            Ese =   BCe ^((~BCi)&  BCo );
            Esi =   BCi ^((~BCo)&  BCu );
            Eso =   BCo ^((~BCu)&  BCa );
            Esu =   BCu ^((~BCa)&  BCe );

            //    prepareTheta
            BCa = Eba^Ega^Eka^Ema^Esa;
            BCe = Ebe^Ege^Eke^Eme^Ese;
            BCi = Ebi^Egi^Eki^Emi^Esi;
            BCo = Ebo^Ego^Eko^Emo^Eso;
            BCu = Ebu^Egu^Eku^Emu^Esu;

            //thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
            Da = BCu^ROL(BCe, 1);
            De = BCa^ROL(BCi, 1);
            Di = BCe^ROL(BCo, 1);
            Do = BCi^ROL(BCu, 1);
            Du = BCo^ROL(BCa, 1);

            Eba ^= Da;
            BCa = Eba;
            Ege ^= De;
            BCe = ROL(Ege, 44);
            Eki ^= Di;
            BCi = ROL(Eki, 43);
            Emo ^= Do;
            BCo = ROL(Emo, 21);
            Esu ^= Du;
            BCu = ROL(Esu, 14);
            Aba =   BCa ^((~BCe)&  BCi );
            Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
            Abe =   BCe ^((~BCi)&  BCo );
            Abi =   BCi ^((~BCo)&  BCu );
            Abo =   BCo ^((~BCu)&  BCa );
            Abu =   BCu ^((~BCa)&  BCe );

            Ebo ^= Do;
            BCa = ROL(Ebo, 28);
            Egu ^= Du;
            BCe = ROL(Egu, 20);
            Eka ^= Da;
            BCi = ROL(Eka, 3);
            Eme ^= De;
            BCo = ROL(Eme, 45);
            Esi ^= Di;
            BCu = ROL(Esi, 61);
            Aga =   BCa ^((~BCe)&  BCi );
            Age =   BCe ^((~BCi)&  BCo );
            Agi =   BCi ^((~BCo)&  BCu );
            Ago =   BCo ^((~BCu)&  BCa );
            Agu =   BCu ^((~BCa)&  BCe );

            Ebe ^= De;
            BCa = ROL(Ebe, 1);
            Egi ^= Di;
            BCe = ROL(Egi, 6);
            Eko ^= Do;
            BCi = ROL(Eko, 25);
            Emu ^= Du;
            BCo = ROL(Emu, 8);
            Esa ^= Da;
            BCu = ROL(Esa, 18);
            Aka =   BCa ^((~BCe)&  BCi );
            Ake =   BCe ^((~BCi)&  BCo );
            Aki =   BCi ^((~BCo)&  BCu );
            Ako =   BCo ^((~BCu)&  BCa );
            Aku =   BCu ^((~BCa)&  BCe );

            Ebu ^= Du;
            BCa = ROL(Ebu, 27);
            Ega ^= Da;
            BCe = ROL(Ega, 36);
            Eke ^= De;
            BCi = ROL(Eke, 10);
            Emi ^= Di;
            BCo = ROL(Emi, 15);
            Eso ^= Do;
            BCu = ROL(Eso, 56);
            Ama =   BCa ^((~BCe)&  BCi );
            Ame =   BCe ^((~BCi)&  BCo );
            Ami =   BCi ^((~BCo)&  BCu );
            Amo =   BCo ^((~BCu)&  BCa );
            Amu =   BCu ^((~BCa)&  BCe );

            Ebi ^= Di;
            BCa = ROL(Ebi, 62);
            Ego ^= Do;
            BCe = ROL(Ego, 55);
            Eku ^= Du;
            BCi = ROL(Eku, 39);
            Ema ^= Da;
            BCo = ROL(Ema, 41);
            Ese ^= De;
            BCu = ROL(Ese, 2);
            Asa =   BCa ^((~BCe)&  BCi );
            Ase =   BCe ^((~BCi)&  BCo );
            Asi =   BCi ^((~BCo)&  BCu );
            Aso =   BCo ^((~BCu)&  BCa );
            Asu =   BCu ^((~BCa)&  BCe );
        }

        //copyToState(state, A)
        s[ 0] = Aba;
        s[ 1] = Abe;
        s[ 2] = Abi;
        s[ 3] = Abo;
        s[ 4] = Abu;
        s[ 5] = Aga;
        s[ 6] = Age;
        s[ 7] = Agi;
        s[ 8] = Ago;
        s[ 9] = Agu;
        s[10] = Aka;
        s[11] = Ake;
        s[12] = Aki;
        s[13] = Ako;
        s[14] = Aku;
        s[15] = Ama;
        s[16] = Ame;
        s[17] = Ami;
        s[18] = Amo;
        s[19] = Amu;
        s[20] = Asa;
        s[21] = Ase;
        s[22] = Asi;
        s[23] = Aso;
        s[24] = Asu;
}

void SPU::shake_init()
{
  unsigned int i;
  for(i=0;i<25;i++) s[i] = 0;
  pos = 0;
}

void SPU::stream_init(unsigned int mode, const uint8_t seed[CRHBYTES], uint16_t nonce)
{
#pragma HLS ALLOCATION function instances=shake_absorb limit=1
  uint8_t t[2];
  t[0] = nonce;
  t[1] = nonce >> 8;
  size_t mlen;
  if(mode==128) mlen = SEEDBYTES;
  else mlen = CRHBYTES;
  shake_init();
  shake_absorb(mode, seed, mlen);
  shake_absorb(mode, t, 2);
  shake_finalize(mode);
}

void SPU::shake_absorb(unsigned int mode, const uint8_t *m, size_t mlen)
{
  unsigned int i;
  uint8_t t[8] = {0};

  unsigned int r;
  if(mode==128) r = SHAKE128_RATE;
  else r = SHAKE256_RATE;

  if(pos & 7) {
    i = pos & 7;
    while(i < 8 && mlen > 0) {
      t[i++] = *m++;
      mlen--;
      pos++;
    }
    s[(pos-i)/8] ^= load64(t);
  }

  if(pos && mlen >= r-pos) {
    for(i=0;i<(r-pos)/8;i++)
      s[pos/8+i] ^= load64(m+8*i);
    m += r-pos;
    mlen -= r-pos;
    pos = 0;
    KeccakF1600_StatePermute();
  }

  while(mlen >= r) {
    for(i=0;i<r/8;i++)
      s[i] ^= load64(m+8*i);
    m += r;
    mlen -= r;
    KeccakF1600_StatePermute();
  }

  for(i=0;i<mlen/8;i++)
    s[pos/8+i] ^= load64(m+8*i);
  m += 8*i;
  mlen -= 8*i;
  pos += 8*i;

  if(mlen) {
    for(i=0;i<8;i++)
      t[i] = 0;
    for(i=0;i<mlen;i++)
      t[i] = m[i];
    s[pos/8] ^= load64(t);
    pos += mlen;
  }
}

void SPU::shake_finalize(unsigned int mode)
{
  unsigned int i,j;
  unsigned int r;
  if(mode==128) r = SHAKE128_RATE;
  else r = SHAKE256_RATE;
  uint8_t p = 0x1F;

  i = pos >> 3;
  j = pos & 7;
  s[i] ^= (uint64_t)p << 8*j;
  s[r/8-1] ^= 1ULL << 63;

  pos = 0;
}

void SPU::shake_squeezeblocks(unsigned int mode, uint8_t *out, size_t nblocks)
{
  unsigned int i;
  unsigned int r;
  if(mode==128) r = SHAKE128_RATE;
  else r = SHAKE256_RATE;

  while(nblocks > 0) {
    KeccakF1600_StatePermute();
    for(i=0;i<r/8;i++)
      store64(out + 8*i, s[i]);
    out += r;
    nblocks--;
  }
}


void SPU::shake_squeeze(unsigned int mode, uint8_t *out, size_t outlen)
{
  unsigned int i;
  uint8_t t[8];
  unsigned int r;
  if(mode==128) r = SHAKE128_RATE;
  else r = SHAKE256_RATE;

  if(pos & 7) {
    store64(t,s[pos/8]);
    i = pos & 7;
    while(i < 8 && outlen > 0) {
      *out++ = t[i++];
      outlen--;
      pos++;
    }
  }

  if(pos && outlen >= r-pos) {
    for(i=0;i<(r-pos)/8;i++)
      store64(out+8*i,s[pos/8+i]);
    out += r-pos;
    outlen -= r-pos;
    pos = 0;
  }

  while(outlen >= r) {
    KeccakF1600_StatePermute();
    for(i=0;i<r/8;i++)
      store64(out+8*i,s[i]);
    out += r;
    outlen -= r;
  }

  if(!outlen){
    //return pos;
  }
  else{
	  //else if(!pos)
	  if(!pos)
	    KeccakF1600_StatePermute();

	  for(i=0;i<outlen/8;i++)
	    store64(out+8*i,s[pos/8+i]);
	  out += 8*i;
	  outlen -= 8*i;
	  pos += 8*i;

	  store64(t,s[pos/8]);
	  for(i=0;i<outlen;i++)
	    out[i] = t[i];
	  pos += outlen;
	  //return pos;  	
  }

}

void SPU::shake(unsigned int mode, uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  shake_init();
  shake_absorb(mode, in, inlen);
  shake_finalize(mode);
  shake_squeeze(mode, out, outlen);
}

void SPU::sample_uniform(int32_t* a, const uint8_t seed[SEEDBYTES], uint16_t nonce)
{
  unsigned int ctr, off;
  unsigned int buflen = SHAKE128_RATE;
  uint8_t buf[SHAKE128_RATE + 2];
  uint32_t t;
  stream_init(128, seed, nonce);
  ctr = 0;
  off = 0;

  while(ctr < N) {
#pragma HLS LOOP_TRIPCOUNT max=5
    shake_squeezeblocks(128, buf + off, 1);
    for(unsigned int i=0; i + 3 <= buflen; i=i+3) {
#pragma HLS LOOP_TRIPCOUNT max=57

      t  = buf[i];
      t |= (uint32_t)buf[i+1] << 8;
      t |= (uint32_t)buf[i+2] << 16;
      t &= 0x7FFFFF;
      if(t < Q){
        a[ctr] = t;
        ctr += 1;
      }
      if(ctr>=N) break;
    }
    off = buflen % 3;
    buflen = SHAKE128_RATE + off;
  }
}

void SPU::sample_eta(int32_t* a, const uint8_t seed[SEEDBYTES], uint16_t nonce)
{
  unsigned int ctr;
  unsigned int buflen = SHAKE128_RATE;
  uint8_t buf[SHAKE128_RATE];
  uint32_t t0, t1;
  stream_init(128, seed, nonce);
  ctr = 0;

  while(ctr < N) {
#pragma HLS LOOP_TRIPCOUNT max=2
    shake_squeezeblocks(128, buf, 1);
    for(unsigned int i=0; i < buflen; i++) {
#pragma HLS LOOP_TRIPCOUNT max=168
      t0 = buf[i] & 0x0F;
      t1 = buf[i] >> 4;
      if(t0 < 9) a[ctr++] = 4 - t0;
      if(t1 < 9 && ctr < N) a[ctr++] = 4 - t1;
      if(ctr>=N) break;
    }
  }
}

