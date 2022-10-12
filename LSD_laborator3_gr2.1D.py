# functie recursiva pentru afisarea nr de la n la 1
def ordine_descrescatoare(n):
    if n >= 1:
        print(n)
        ordine_descrescatoare(n - 1)


ordine_descrescatoare(15)


# functie recursiva pentru afisarea nr de la 1 la n
def ordine_crescatoare(n):
    if n >= 1:
        ordine_crescatoare(n - 1)
        print(n)


print("crescator:")
ordine_crescatoare(15)


# factorial 5! = 1*2*3*4*5 sau 5*4*3*2*1
def factorial(n):
    if n == 1:  # cazul de baza (stop condition)
        return 1
    else:
        return n * factorial(n - 1)


'''
factorial(5) ->  5 * factorial(4)
                        -> 4 * factorial(3)
                                ->  3 * factorial(2) 
                                            ->  2 * factorial(1)
                                                        -> 1
                                            <-    2*1    <- 1 
                                <-   3*2*1 
                        <- 4*3*2*1
               <- 5*4*3*2*1
return 5*4*3*2*1 = 120
'''

print("factorial(5) = " + str(factorial(5)))

'''
Exercițiul 1: Progresie aritmetică
Implementați în Python o funcție recursivă pentru a calcula valoarea termenului de rang n,
 pentru progresia aritmetică definită de relația: 
a(n)=2×a(n−1)−3
Se consideră valoare termenului a(0)=2.
Funcția va primi ca unic parametru numărul natural n.
'''


def pa(n):
    if n == 0:
        return 2
    else:
        return 2 * pa(n - 1) - 3


print("pa(0) = " + str(pa(0)))
print("pa(1) = " + str(pa(1)))

'''
Exercițiul 2: Fibonacci
Implementați în Python o funcție recursivă pentru a calcula termenul de rang n din șirul lui Fibonacci.
'''


def fibbo(n):
    if n <= 1:
        return n
    else:
        return fibbo(n-1)+fibbo(n-2)


print("fibo(1) = " + str(fibbo(1)))
print("fibo(2) = " + str(fibbo(2)))
print("fibo(3) = " + str(fibbo(3)))
print("fibo(5) = " + str(fibbo(5)))

'''
Exercițiul 3: Suma primelor N numere naturale
Implementați în Python o funcție recursivă pentru a calcula suma primelor N  numere naturale.
'''
    if n == 0:
        return 0
    else:
        return n + suma(n-1)

print("suma(9) = "+str(suma(9)))
def suma_nr_naturale(n):
    

print("suma(3) = "+str(suma_nr_naturale(5)))
