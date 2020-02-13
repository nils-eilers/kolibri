#include <stdio.h>
#include <stdlib.h>

#define csize   256

unsigned char cf [csize * 8];

FILE *fp;

int main(int argc, char *argv[])
{
   int cha,row,k,bytes;
   unsigned char *cp;

   if (argc != 2)
   {
      fprintf(stderr,"Usage: char2asm binfile > asmfile\n");
      exit(1);
   }

   fp = fopen(argv[1],"rb");
   if (!fp)
   {
      perror("Unable to open font file");
      exit(1);
   }
   bytes = fread(cf,1,csize*8+1,fp);
   if (bytes != csize*8)
   {
      fprintf(stderr,"%s is not a valid font file\n",argv[1]);
      exit(1);
   }
   fclose(fp);

   printf("           ORG 0\n");
   printf("           STORE 0,2048,\"%s\"\n\n",argv[1]);

   cp = cf;

   for (cha=0 ; cha < csize ; ++cha)
   {
      for (row=0 ; row < 8 ; ++row, ++cp)
      {
         printf("           BITS ");
         for (k=0x80 ; k ; k >>=1)
         {
            if (*cp & k) printf(" *");
            else         printf(" .");
         }
         if (row == 0) printf(" ; $%4.4X",cha);
         printf("\n");
      }
      printf("\n");
   }
   return 0;
}

