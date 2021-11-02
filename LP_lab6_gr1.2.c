#include <stdio.h>
//scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
//si afiseaza elementele tabloului

void afisare_tablou(int a[], int n)
{
    int i;
    for(i=0;i<n;i++)
    {
        printf("Element a[%d] = %d\n", i, a[i]); //i - pozitia elementului, a[i] - elementul
    }
}

//scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
//si AFISEAZA suma elementelor tabloului
void afisare_suma_tab(int a[], int n)
{
    int i, s=0;
    for(i=0;i<n;i++)
    {
        s = s + a[i];
    }
    printf("Suma = %d\n",s);
}

//scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
//si CALCULEAZA SI RETURNEAZA suma elementelor tabloului
int afisare_suma_tab2(int a[], int n)
{
    int i, s=0;
    for(i=0;i<n;i++)
    {
        s = s + a[i];
    }
    
    return s;
}

//scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
//si AFISEAZA elementul minim al tabloului
void min_tab(int a[], int n)
{
    int i, min=a[0];
    for(i=1;i<n;i++)
    {
        if (a[i] < min)
         min = a[i];
    }
    printf("Min = %d\n",min);
}

//scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
//si AFISEAZA elementul minim al tabloului si pozitia lui
void min_tab_pozitie(int a[], int n)
{
    int i, min=a[0], p=0;
    for(i=1;i<n;i++)
    {
        if (a[i] < min)
         {
             min = a[i];
             p = i;
         }
    }
    printf("Min = %d, pozitia = %d\n",min,p);
}
//scrieti o functie care ia ca parametru o matrice a și un întreg N reprezentând numărul de linii 
//si un întreg M reprezentând numărul de coloane 
//si AFISEAZA elementele de pe linii si coloane
void afisare_mat(int a[3][3], int n, int m)
{
    int i, j;
    for(i=0;i<n;i++)
    {
       for(j=0;j<m;j++)
        {  
            printf("%d ",a[i][j]);
        }
        printf("\n");
    }
    
}

//scrieti o functie care ia ca parametru o matrice a și un întreg N reprezentând numărul de linii 
//si un întreg M reprezentând numărul de coloane 
//si AFISEAZA elementele DIAGONALEI
void afisare_diagonala(int a[3][3], int n, int m)
{
    int i, j;
    for(i=0;i<n;i++)
    {
       for(j=0;j<m;j++)
        {  
            if (i == j)
                printf("%d ",a[i][j]);
        }
    }
    
}
int main()
{
            //indexul (pozitia) incepe de la 0
            //  0  1 2
    int a[3] = {6,3,1};
    int b[] = {4,5,6,7,8};
    
    afisare_tablou(a,3);
    /*
    //apel cu valori citite de la tastatura
    int n; //citim cate elemente are tabloul (dimensiunea)
    printf("n=");
    scanf("%d", &n);
    
    int t[n];
    int i;
    for(i=0;i<n;i++)
    {
        printf("Element a[%d] = ",i);
        scanf("%d", &t[i]);
    }
    
    afisare_tablou(t,n);
    */
    
    afisare_suma_tab(a,3);
    
    int s = afisare_suma_tab2(a,3);
    printf("Suma2 = %d\n",s);

    min_tab(a,3);
    min_tab_pozitie(a,3);
    
    int mat[3][3] = {1,2,3,4,5,6,7,8,9};
    /*  1 2 3       a[0][0]  a[0][1] a[0][2]
        4 5 6       a[1][0]  a[1][1] a[1][2]
        7 8 9       a[2][0]  a[2][1] a[2][2]
    */
    
    afisare_mat(mat,3, 3);
    afisare_diagonala(mat, 3,3);
    
    //citire de la tastatura
    int n, m;
    printf("n=");
    scanf("%d", &n);
    
    printf("m=");
    scanf("%d", &m);
    
    int mat1[n][m];
    int i,j;
    
    for(i=0;i<n;i++)
    {
       for(j=0;j<m;j++)
        {  
            printf("Element[%d][%d] = ",i, j);
            scanf("%d",&mat1[i][j]);
        }
    }
    afisare_mat(mat1, n, m);
    afisare_diagonala(mat1, n, m);
    
    return 0;
}

/*
1.scrieti o functie care ia ca parametru un tablou a și un întreg N reprezentând numărul de elemente
si AFISEAZA elementul maxim al tabloului si produsul elementelor tabloului
*/
