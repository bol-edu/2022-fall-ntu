#include "harris.h"

#include <iostream>
using namespace std;

int main()
{
    DTYPE input[16384];
    DTYPE output[16384];
    int gold;
    int in;
    
    double a = 0.04;

    FILE * fp = fopen("src.txt","r");
    FILE * fpo = fopen("dst.txt","r");
 
    for(int i=0; i<16384; i++)
    {
        fscanf(fp, "%d", &in);
        input[i] = in;
    }
 
	harris(input, output, a);
	
    int tf = 0;
 
    for(int i=0; i<16384; i++)
    {
        fscanf(fpo, "%d", &gold);
        if (output[i] - gold != 0)
        {
            tf = tf + 1;
        }        
    }

    fclose(fp);
    fclose(fpo);
	
    if (tf > 64)
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        cout << tf;
        return 1;
    } 
    else 
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        cout << tf;
        return 0;
    }

}
