#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void afiseaza_adresa()
{
    int x =5;
    printf("x=%d\n", x);
    
    int *p;
    p = &x;
    //afisam adresa
    printf("p=%x\n", p);
    //afisam valoare prin dereferentiere, * = urmareste adresa
    printf("*p=%d\n", *p);
    
    //schimbam valoarea prin pointer
    *p = 10;
    printf("x=%d\n", x);
    printf("*p=%d\n", *p);
}

void aritmetica()
{
    int numere[5];
    int *p;
    p = numere; //pointerul pointeaza la inceputul tabloului, numere[0]
    // adresa de la pozitia 0 a tabloului se acceseaza prin &numere[0]
    int x = 1;
    
    //initializare
    for(;p<&numere[5];p++)
    {
        *p = x;
        x++;
    }
    
    p = numere;
    //afisare cu pointer
    for(;p<&numere[5];p++)
    {
       printf("%d ", *p);
    }
    
    printf("\n");
    //afisare traditionala
    for(int i=0;i<5;i++)
    {
        printf("%d ", numere[i]);
    }
    
}

void schimba_valoare(int *a)
{
    *a = *a + 4;
}

void schimba_valoare_fara_pointer(int a)
{
    a = a + 4;
}

void modifica_tablou(int *tab, int nr_de_elemente)
{
    for(int i=0;i<nr_de_elemente;i++)
    {
        *tab = *tab+1;
        tab++;
    }
}

void sterge_caracter_cuvant()
{
     char cuvant[] = "ana";
     int lungime = strlen(cuvant);
     int index = 1;

    for (int i=index; i < lungime; i++)
    {   
        char *c = cuvant + i;
        char temp;
        temp = *(c + 1);
        *c = temp;
    }
    printf("%s\n", cuvant);
}

//malloc, calloc, realloc
void alocare_mem()
{
    //aloca 13 bytes pe heap pentru 13 caractere
    char *nume = malloc(12*sizeof(char));
    strcpy(nume,"anna sthlet");
    printf("%s", nume);
    
    free(nume);
    
}

int main()
{
    //afiseaza_adresa();
    //aritmetica();
    
    int a = 5;
    printf("\na=%d",a);
    schimba_valoare(&a);
    printf("\na=%d",a);
    
    schimba_valoare_fara_pointer(a);
    printf("\na=%d",a);
    
    int tablou[] = {1,2,3,4,5};
    
    modifica_tablou(tablou,5);
    
    printf("\n");
    for(int i=0;i<5;i++)
    {
        printf("%d ",tablou[i]);
    }
    
    sterge_caracter_cuvant();
    alocare_mem();
    
    return 0;
}