#include <stdio.h>
#include <math.h>

// tip_returnat nume_functie(tip_parametru1 nume_parametru1,...tip_parameteruN nume_parameteruN);

// functie fara parametrii si fara return
void afiseaza_hello()
{
    printf("Hello!\n");
}

// functie care primeste ca parametru un intreg si il afiseaza
void afiseaza_int(int x)
{
    printf("x=%d\n", x);
}

// functie care primeste ca parametru un intreg si calculeaza suma lui cu 3
int calculeaza(int x)
{
    return x+3;
}

//suma a doua numere
int suma(int a, int b)
{
    return a+b;
}

//suma a doua numere
int suma2(int a, int b)
{
    int s;
    s = a + b;
    return s;
}

// f : R→R, f(x)= x^2−7x+4 
float f(float x)
{
    return pow(x,2)-7*x+4;
}

int main()
{
    int a, c, b; //definire variabila
    a=4; //valoare constanta
    
    // afisare mesaj
    printf("a=");
    // citire de la tastaura
    //scanf("%d", &a);
    // afisare valoare citita
    printf("a=%d\n",a);

    //apelare functie
    afiseaza_hello();
    //apelare functie cu parametru
    afiseaza_int(21);
    
    //varianta1 - direct cu printf
    printf("calculeaza=%d\n",calculeaza(5));
    
    //varianta2 - cu variabila
    c = calculeaza(5);
    printf("calculeaza=%d\n",c);
    
    //suma a doua numere - valori constante
    printf("suma=%d\n",suma(3,4));
    printf("suma=%d\n",suma2(3,4));
    
    //suma a doua numere - valori citite de la tastatura
    printf("a=");
    scanf("%d",&a);
    printf("b=");
    scanf("%d",&b);
    printf("suma=%d\n",suma(a,b));
    
    printf("f(3.1)=%f\n",f(3.1));
    return 0;
}
/*
1. Scrieți o funcție care returnează ultima cifră a numărului primit ca parametru.

2. Scrieți o funcție care primește ca parametru raza unui cerc și afiseaza atât 
lungimea discului cât și aria acestuia.

3. Să se implementeze următoarea funcție matematica folosind funcții:
m : N→R, m(x)= x/7. Să se apeleze funcția implementata mai sus cu valori constante 
și cu valori citite de la tastatură.
*/


