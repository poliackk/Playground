#include <stdio.h>
#include <math.h>

int main()
{
    printf("hello!\n");
    // int, float, double, char
    
    int a=3, b=5;
    printf("a=%d; b=%d\n", a, b);
    // %d - int

    float c = 10.3;
    printf("c=%f\n", c);
    // %f - float, double
    
    double d = 10.3;
    printf("c=%lf\n", d);
    
    float rez = a/b;//catul 
    printf("rez=%f\n", rez);
    
    int rest = a%b; // % - MOD; restul
    printf("rest=%d\n", rest);
    
    float a1=3.0, b1=5.0;
    float rez2 = a1/b1;
    printf("rez=%f\n", rez2);

    int x = 3; // ridicare la putere
    printf("x^2=%d\n", x*x);
    
    int p = pow(x,2);// ridicare la putere cu pow(exp, putere)
    printf("x^2=%d\n",p);
    
    int i=1;
    printf("i=%d\n", i++);//1
    printf("i=%d\n", i);//2
    printf("i=%d\n", ++i);//3
    
    //h : R×R×R→R, h(x,y,z)= x/3 + y/2 − z^3/5
    float x1=3, y=2, z=5, h;
    h = x1/3+y/2-pow(z,3)/5;
    printf("h=%f\n", h);
    
    return 0;

}

