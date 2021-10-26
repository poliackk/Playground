#include <stdio.h>
#include <stdbool.h>

//for - are un numar definit de pasi (de cate ori se repeta bucla)
//afisarea numerelor de la 1 la n
//i - iterator
void exemplu_for_afisare()
{
    int i, n;
    printf("n=");
    scanf("%d",&n);
    for(i=1;i<=n;i++)
    {
        printf("%d ",i);
    }
}

//suma numerelor de la 1 la n
void exemplu_for_suma()
{
    int i, n, s=0;
    //in variabila s acumulam suma; trebuie initializata cu 0
    printf("n=");
    scanf("%d",&n);
    for(i=1;i<=n;i++)
    {
      s = s + i;
    }
    printf("suma=%d\n", s);
}

void prim(int n)
{
    int i;
    bool este_prim = true;
    
    for(i=2;i<n;i++)
    {
      if (n % i == 0) //restul impartirii la i este 0 => nr este divizibil cu i
        {
          este_prim = false;  
          printf("%d ", i);
        }
    }
    
    if(este_prim == true)
    {
        printf("numarul este prim\n");
    }
    else
    {
         printf("numarul nu este prim\n");
    }
    
}

/*testare initiala; numar necunoscut de pasi
while(cond)
{
    ....
}
*/
//se citesc mai multe numere naturale pana la intalnirea valorii 0, afisati suma lor.
void exemplu_while()
{
    int n, s=0;
    printf("n=");
    scanf("%d",&n);
    
    while(n!=0)
    {
        s = s + n;
        printf("n=");
        scanf("%d",&n);
    }
    
    printf("suma=%d\n", s);
}
/*testare finala; numar necunoscut de pasi*/
void exemplu_do_while()
{
    int n, s=0;
    
    do
    {
        printf("n=");
        scanf("%d",&n);
        s = s + n;
        
    }while(n!=0);
    
    printf("suma=%d\n", s);
}

int main()
{
    //exemplu_for_afisare();
    //exemplu_for_suma();
    //prim(13);
    //prim(12);
    //exemplu_while();
    //exemplu_do_while();
    
    /*Scrieti un program care să apeleze funcțiile de mai sus prin intermediul 
    unui meniu text, realizat cu ajutorul instructiunilor do...while si switch.
    optiunile valabile sunt:
    0 - exit
    1 - exemplu_for_afisare();
    2 - exemplu_for_suma();
    3 - prim(13);
    4 - exemplu_while();
    */
    int optiune;
    do{
        printf("optiune=");
        scanf("%d",&optiune);
        
        switch(optiune)
        {
            case 0: break;
            case 1: { exemplu_for_afisare(); break;}
            case 2: { exemplu_for_suma(); break;}
            case 3: { prim(13); break;}
            case 4: { exemplu_while(); break;}
            default: printf("optiunea nu este valida!");
        }
        
    }while(optiune!=0);
    
    return 0;
}

/*
1. scrieti o functie care afiseaza suma numerelor pare din intervalul [1,n].
2. scrieti o functie care citeste de la tastatura numere pana la introducerea valorii
0 si afiseaza produsul numerelor impare introduse.

daca restul impartirii la 2 este 0 => par; altfel este impar

*/
