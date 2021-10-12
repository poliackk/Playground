#include <stdio.h>
#include <math.h>

void functie_citire_afisare()
{
    int b;
    //citirea de la tastatura a unui numar intreg
    printf("b=");
    scanf("%d", &b);
    //afisarea
    printf("valoarea citita este: %d\n", b); 
}

int functie1(int x) // x = 4
{
    x = x*3; // x = 4*3 = 12
    return x;
}

// f : R→R, f(x)= x^2−7x+4
int f(int x)
{
    return pow(x,2)-7*x+4;
}

//daca a > 20 atunci a = a + 5; altfel a = a + 1;
int exemplu_if(int a)
{
   if (a > 20) //if (conditie) 
        a = a + 5;   //se executa daca conditia este adevarata
    else
        a = a + 1;  //se executa daca conditia este falsa

    return a;
}

//returneaza maximul a doua numere
int maxim(int a, int b)
{
    if (a>b)
        return a;
    else
        return b;
}

//afisare numere de la 1 la n
/*
exp_initiala - se executa doar o data, la inceput
for(exp_initiala; expresie_test; expresie_reluare)
{
    corp_for
}
*/
void exemplu_for(int n)
{
    int i; //contor
    //i++ inseamna i = i + 1 ex: daca i = 5 atunci daca i++ i=6
    for(i = 1; i <= n; i++)
    {
        printf("%d ", i);
    }
}

//afisare numere pare de la 1 la n
void exemplu_for_par(int n)
{
    int i; //contor
    //i++ inseamna i = i + 1 ex: daca i = 5 atunci daca i++ i=6
    for(i = 2; i <= n; i=i+2)
    {
        printf("%d ", i);
    }
}

//afisare numere pare de la 1 la n
void exemplu_for_par2(int n)
{
    int i; //contor
    for(i = 1; i <= n; i++)
    {
        if (i % 2 == 0)
            printf("%d ", i);
    }
}

int main()
{
    //functie_citire_afisare();
    
    printf("functie1(4) =  %d\n", functie1(4));
    
    printf("f(2) =  %d\n", f(2));
    printf("f(3) =  %d\n", f(3));
    
    printf("exemplu_if(22) =  %d\n", exemplu_if(22));
    printf("exemplu_if(10) =  %d\n", exemplu_if(10));
    
    printf("max(10,4) =  %d\n", maxim(10,4) );
    
    exemplu_for(10);
    printf("\n");
    exemplu_for_par(100);
    return 0;
}

/*
1. g : Z×Z→Z, g(x,y)=2x−5y +1 
2. afisati toate numerele impare de la 1 la n
*/
