#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

int main()
{
   int IM[1][3];

   FILE *file = fopen("test.csv", "r");
   int value;
   for (int i = 0; i < 3; i++) {
	   for (int j = 0; j < 3; j++) {
		   fscanf(file, "%d,", &IM[0][j]);
		   printf("%d  ", IM[0][j]);
	   }
	   printf("\n");
   }

   for (int i=0; i<3; i++)
	   printf("%d ", IM[0][i]);


   return 0;
 }
