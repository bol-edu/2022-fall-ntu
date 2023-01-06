
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "fast.h"

#include <iostream>
using namespace std;

int main()
{
    DTYPE input[16384];
    DTYPE output[16384];
    int gold;
    int in;

    int imgheight = 128;
    int imgwidth = 128;

    int threshold = 20;

    FILE * fp = fopen("src.txt","r");
    FILE * fpo = fopen("dst.txt","r");
    
    for(int i=0; i<16384; i++)
    {
        fscanf(fp, "%d", &in);
        input[i] = in;
    }

	fast_accel(input, threshold, output, imgheight, imgwidth);
    
    int tf = 0;

    for(int i=0; i<16384; i++)
    {
        fscanf(fpo, "%d", &gold);
        if (output[i] - gold != 0)
        {
            tf = 1;
            printf("location (%d,%d):  expected: %d   get: %d \n", i/128, i%128, gold, output[i]);
        }
    }

    fclose(fp);
    fclose(fpo);

    if (tf == 1)
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 1;
    } 
    else 
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }

}
