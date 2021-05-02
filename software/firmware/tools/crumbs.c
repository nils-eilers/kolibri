#include <stdio.h>
#include <stdlib.h>

void create_file(char *filename, char *storename, int addr)
{
   FILE *out;
   int i;

   out = fopen(filename,"wt");
   if (!out)
   {
      perror("Unable to create file");
      exit(1);
   }

   fprintf(out,"        ORG     0\n");
   fprintf(out,"        STORE   0,32768,\"%s\"\n\n",storename);

   for (i=0; i<128; i++)
   {
      fprintf(out, "        FDB $%04X\n", addr+i);
      fprintf(out, "        FILL 254($FF)\n\n");
   }

   fclose(out);
}

int main(int argc, char *argv[])
{
   (void) argv; // silence parameter unused warning

   if (argc != 1)
   {
      fprintf(stderr,"extra options ignored, aborted\n");
      exit(1);
   }

   create_file("../firmware-00000-07fff.as9", "firmware-00000-07fff.bin", 0x0000);
   create_file("../firmware-10000-17fff.as9", "firmware-10000-17fff.bin", 0x1000);
   create_file("../firmware-18000-1ffff.as9", "firmware-18000-1ffff.bin", 0x1800);
   return 0;
}

