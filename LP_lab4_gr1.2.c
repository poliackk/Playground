#include <stdio.h>
#include <math.h>
int f(int x)//=2
{
    int rezultat;
    
    if(x>0)
    {
        rezultat = pow(x,2)-7*x+4;  //f(x)= x^2−7x+4 , dacă x>0
    }
    else
    {
        rezultat = pow(x,2)-x+9;  //f(x)= x^2−x+9 altfel
    }
    return rezultat;
}
/*
&& - si
|| - sau
*/
int g(int x, int y)
{
 int rezultat;
 //g(x,y)=2x−5y +1, daca x>0 si y<0,
 if(x>0 && y<0)
 {
     rezultat = 2*x-5*y+1;
 }
 else //g(x,y)=x+9y +1 altfel
 {
     rezultat = x+9*y+1;
 }
 return rezultat;
}

//f(x)= x+7f(x-1)+4, f(0)=0;
int f1(int x)
{
    if(x == 0)
     {   return 0;}
    else
     {   return (x + 7*f(x-1)+4);}
}
//g : N→Z, g(x)= 2g(x-1) , g(0)=1;

int g1(int x)
{
    if (x==0)
    { return 1;}
    else
    {return (2*g1(x-1));}
}

int putere(int x, int p)//p=2;x=3
{
    if (p==1) //fara cazul de baza avem bucla infinita
    {
        return x;
    }
    else
    {
        return x*putere(x,(p-1));//3*putere(3,1) 
    }
}

int main()
{
    //intructiunea de decizie
    int n;
    printf("n=");
    scanf("%d",&n);
    
    // % (mod) => restul impartirii 
    if (n % 2 == 0)
     {   printf("nr este par\n");
     }
    else
    {
       printf("nr este impar\n"); 
    }
    
    //Să se implementeze următoarele funcții matematice într-un mod modular, folosind funcții:
    //f : Z→Z, f(x)= x^2−7x+4 , dacă x>0 si f(x)= x^2−x+9 altfel
    //Să se apeleze funcțiile implementate mai sus cu valori constante și cu valori citite de la tastatură.
    
    //cu valori constante
    printf("f(2)=%d",f(2));
    
    //valori citite de la tastatură
    int x;
    printf("\nx=");
    scanf("%d",&x);
    printf("f(x)=%d",f(x));

    
    // g : Z×Z→Z, g(x,y)=2x−5y +1, daca x>0 si y<0,  g(x,y)=x+9y +1 altfel
    //cu valori constante
    printf("g(1,-2)=%d",g(1,-2));
    
    
    //valori citite de la tastatură
    int x1, y1;
    printf("\nx1=");
    scanf("%d",&x1);
    printf("\ny1=");
    scanf("%d",&y1);
    printf("g(x1,y1)=%d",g(x1,y1));
    
    //Să se implementeze următoarele funcții recursive:
    //f : N→Z, f(x)= x+7f(x-1)+4 , f(0)=0;
    //f(3)=?
    //f(3)=3+7*f(2)+4
    //f(2)=3+7*f(1)+4
    //f(1)=3+7*f(0)+4
    //f(0)=0 => putem sa inlocuim; este cazul de baza f(0)=0
    
    //scriem f1 deoarece f a fost implementat mai inainte
    printf("recursiv f(3)=%d\n",f1(3));
    printf("recursiv g(3)=%d\n",g1(1));
    printf("putere =%d\n",putere(3,3));
    
    return 0;
}


/*
1. Să se implementeze următoarele funcții matematice într-un mod modular, folosind funcții:
 k : N→N, k(x)= x2/9, daca x este par (x%2==0), k(x)= x2, altfel
 Să se apeleze funcțiile implementate mai sus cu valori constante și cu valori citite de la tastatură.

2. Să se implementeze următoarele funcții recursive:
 h : N→Z, h(x)= h(x-1)/2 , h(0)=10;

*/