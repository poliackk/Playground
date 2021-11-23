#include <stdio.h>
#include <string.h>
 
 /*
 structurile sunt tipuri definite de utilizator care ne permit sa combinam elemente
 de diferite tipuri.
 
 Pentru a defini o structura:
 struct [struct name]
 {
     member_type member_name;
     member_type member_name;
     ...
     member_type member_name;
 }
 */
 
struct Carte {
   char  titlu[50];
   int   pagini;
};

void afiseazaCarte(struct Carte x ) {

   printf( "Titlu : %s\n", x.titlu);
   printf( "Pagini: %d\n", x.pagini);
}

void max_pagini(struct Carte p[], int n)
{
    struct Carte maxCarte = p[0];
    int i;
    
    for(i=1;i<n;i++)
    {
        if(maxCarte.pagini < p[i].pagini)
        {
            maxCarte = p[i];
        }
    }
    
    printf("\nMAXIM:\n");
    afiseazaCarte(maxCarte);
}

void creare_tablou_structura()
{
   struct Carte tablou_carti[10];   
   int n;
   
   
   printf("Introductei numarul de carti:");
   scanf("%d", &n);
   
   //for de citire valori
   for(int i=0;i<n;i++)
   {
       printf("Titlul:");
       scanf("%s[^\n]", tablou_carti[i].titlu);
       
       printf("Numar pagini:");
       scanf("%d", &tablou_carti[i].pagini);
       
   }
   
   //for de afisare valori
   for(int i=0;i<n;i++)
   {
       afiseazaCarte(tablou_carti[i]);
   }
   
   max_pagini(tablou_carti,n);
}



int main( ) {

   struct Carte Carte1;    
   struct Carte Carte2;
 
   strcpy(Carte1.titlu, "C Programming");
   Carte1.pagini = 245;

   strcpy(Carte2.titlu, "Java Programming");
   Carte2.pagini = 400;
 
   afiseazaCarte( Carte1 );
   afiseazaCarte( Carte2 );
   
   printf("\n+++++++++++++++++++++++++++++++++\n");
   creare_tablou_structura();
   
   return 0;
}


