/*
Exista doua tipuri de fisiere:
- fisiere text (extensia .txt)
- fisiere binare (extensia .bin) - formate din 0 si 1, securitate mai buna dar 
mai greu de citit.
Cand lucram cu fisiere trebuie sa declaram un pointer de tipul FILE:
FILE *fptr;
Deschiderea unui fisier se face cu fopen:
ptr = fopen("fisier","mode");
mod:
- w, write mode: deschis pentru scriere, daca in fisier exista continut, 
acesta se suprascrie. Daca fisierul nu exista, acesta va fi creat.
- a, append mode: deschis pentru adaugare, daca in fisier exista continut,
continutul nou adaugat se adauga la final. Daca fisierul nu exista, acesta va fi creat.
- r, read mode: deschis pentru citire, daca fisierul nu exista, returenaza null
- r+, read write mode: deschis pentru citire si scriere.Daca fisierul nu exista, returenaza null.
- w+, read write mode: deschis pentru citire si scriere.daca in fisier exista continut, 
acesta se suprascrie. Daca fisierul nu exista, acesta va fi creat.
- wb, rb, ab - pentru fisiere binare
*/

#include <stdio.h>
#include <stdlib.h>

void scriere_fisier()
{
   int num;
   FILE *fptr;

   printf("Numar: ");
   scanf("%d",&num);
   
   fptr = fopen("fisier.txt","w");

   if(fptr == NULL)
   {
      printf("Error!");   
      exit(1);             
   }

   fprintf(fptr,"%d\n",num);
   fclose(fptr);
}

void citire_fisier1()
{
    int num;
   FILE *fptr;
   
   fptr = fopen("fisier2.txt","r");

   if (fptr == NULL){
       printf("Error!");
       exit(1);
   }

    fscanf(fptr,"%d", &num);
    printf("nr=%d", num);
   fclose(fptr); 
}

void citire_fisier_linie_cu_linie()
{
    FILE *fptr;
    char *line;
    size_t len = 0;

    fptr = fopen("fisier2.txt", "r");

    if (fptr == NULL){
       printf("Error!");
       exit(1);
   }

    while (getline(&line, &len, fptr)!=-1) {
        printf("%s", line);
    }

    fclose(fptr);
}

void citeste_tablou()
{
    FILE *fptr;
    fptr = fopen("fisier_array.txt", "r");

    int numere[16];
    int i, dimensiune;

    if (fptr == NULL){
        printf("Error!\n");
        exit (0);
    }
    
    fscanf(fptr, "%d,", &dimensiune);
    printf("dimensiunea = %d\n", dimensiune);
    
    for (i = 0; i < dimensiune; i++){
        fscanf(fptr, "%d,", &numere[i] );
    }

    for (i = 0; i < dimensiune; i++){
        printf("numere[%d] = %d\n", i, numere[i]);
    }

    fclose(fptr);
}
int main()
{
    //scriere_fisier();
    //citire_fisier1();
    //citire_fisier_linie_cu_linie();
    citeste_tablou();
    
    return 0;
}