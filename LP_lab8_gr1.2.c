#include <stdio.h>
#include <string.h>
#include <stdbool.h>

void intro()
{
     char x = 'a';
    printf("%c", x);
    // 'a'
    // "a"
    // \0 - caracterul nul 
    char sir1[] = "ana", sir2[] = "ana1";
    printf("%s", sir1);
    
    //strcmp(sir1, sir2)
    // 0 - sir1 = sir2
    // > 0 - sir1 > sir2
    // < 0 - sir1 < sir2
    
    if (strcmp(sir1,sir2) == 0)
        printf("sunt egale!\n");
    else
        printf("nu sunt egale!\n");
        
    for(int i=0;i<strlen(sir1);i++)
    {
        printf("%c", sir1[i]);
    }
}
//se citeste o propozitie, sa se afiseze fiecare cuvant din prop pe o noua linie.
//ana are mere\0
void cuvinte()
{
    char sir[100];
    int len;
    printf("prop=");
    //%(limit)[^\n]
    scanf("%99[^\n]", sir);
    printf("%s\n", sir);
    char *p;
    
    p = strtok(sir, " .,");
    
    while(p!=NULL)
    {
        len = strlen(p);
       printf("%s - lungimea este: %d \n", p, len);
       p = strtok(NULL, " .,");
    }
    
}

//afiseaza numerele dintr-o propozitie
//ana are 11 mere
void numere()
{
    char sir[] = "ana are 11 mere 13";
    char *p;
    bool is_number = true;
    
    p = strtok(sir, " .,");
    
    while(p!=NULL)
    {
       is_number = true;
       for(int i = 0; i< strlen(p); i++)
       {
           if(!(p[i] >= '0' && p[i] <= '9'))
            is_number = false;
       }
       
       if (is_number == true)
       {
           printf("%s\n", p);
       }
       p = strtok(NULL, " .,");
    }
}

//pozitiile unui caracter intr-un sir
//strchr - pointer catre prima aparitie a caracterului
//strrchr - pointer catre ultima aparitie a caracterului
void pozitii()
{
    char sir[] = "ana are 11a mere";
    char *p;
    printf("\n%s\n", sir);
    
    p=strchr(sir,'a');
    
    while(p!=NULL)
    {
        printf("%ld ", p-sir+1);
        p = strchr(p+1, 'a');
    }
}

int main()
{
   
    //intro();
    //cuvinte();
    //numere();
    pozitii();
    return 0;
}
