# functii ca variabila

def suma(a, b):
    return a + b


print("suma = " + str(suma(5, 7)))
# varianta cu format
print("suma = {0}, {1}, {2}".format(suma(5, 7), suma(4, 7), suma(1, 7)))

suma_nr = suma
print("suma = " + str(suma_nr(5, 7)))


# functii ca parametru

def operatie(f, x):
    return f(x) * 5


def increment(x):
    return x + 1


print("operatie = " + str(operatie(increment, 4)))

import operator

print("suma operator = " + str(operator.add(4, 3)))


# functie care primeste ca param un operator si 2 arg, si il aplica celor 2 args

def aplica(op, a, b):
    return op(a, b)


print(aplica(operator.add, 3, 6))
print(aplica(operator.mul, 3, 6))

# functii anonime - nu au nume

print("functie anonima: ")
print((lambda x: x + 3)(4))

lambda1 = lambda x: x + 3

print(lambda1(3))


def lambda2(x):
    return x + 3


def increment_decrement_function(option):
    if option:
        return lambda x: x + 1
    else:
        return lambda x: x - 1


inc = increment_decrement_function(True)
dec = increment_decrement_function(False)
print("inc, dec:")
print(inc(2))
print(dec(2))


# compunerea functiilor

def f(x):
    return x + 1


def g(x):
    return x * 2


print(f(g(1)))


def comp(f, g):
    return lambda x: f(g(x))


fg = comp(f, g)


# print(fg(1))


# functie cu parametrii default


def test(a, b=0, c=0):
    print("a = {0}, b = {1}, c = {2}".format(a, b, c))


test(1, 2, 4)
test(1, 2)
test(1)
test(1, c=2)


# test(b=1, c=2) - a lipseste


# val_distincte(1,1,1) - sunt egale
# val_distincte(1,2,1) - 1 si 3 sunt egale

def compara_doua_nr(nr1, poz1, nr2, poz2):
    if nr1 == nr2:
        print("arg de la pozitia " + str(poz1) + " si " + str(poz2) + " sunt egale")


def compara_nr(nr1, nr2, nr3):
    if nr1 != nr2 and nr1 != nr3 and nr2 != nr3:
        print("nr sunt distincte")
    elif nr1 == nr2 == nr3:
        print("nr sunt egale")
    else:
        compara_doua_nr(nr1, 1, nr2, 2)
        compara_doua_nr(nr1, 1, nr3, 3)
        compara_doua_nr(nr2, 2, nr3, 3)


compara_nr(1, 2, 1)
compara_nr(1, 1, 1)
compara_nr(1, 2, 3)
compara_nr(1, 1, 2)

# TEMA: EX 2, 3 ,4
