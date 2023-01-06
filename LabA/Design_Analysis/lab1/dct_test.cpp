// Copyright (C) 2008 AutoESL Design Technologies, Inc.
// All rights reserved.

#include "dct.h"

// ********************************************************
int main() {
   short a[N], b[N];
   int retval = 0, i;
   FILE *fp;

   fp=fopen("in.dat","r");
   for (i=0; i<N; i++){
      int tmp;
      fscanf(fp, "%d", &tmp);
      a[i] = tmp;
   }
   fclose(fp);

   dct(a, b);

	fp=fopen("out.dat","w");
	//printf(" Din Dout \n");
	for (i=0;i<N;i++) {
		fprintf(fp, "%d \n", b[i]);
		//printf("  %d   %d\n", a[i], b[i]);
	}
	fclose(fp);

	// Compare the results file with the golden results
	retval = system("diff --brief -w out.dat out.golden.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n"); 
		retval=1;
	} else {
		printf("Test passed !\n");
  }

   return retval;
}
