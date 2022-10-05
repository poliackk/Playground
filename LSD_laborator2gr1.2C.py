# functii ca variabila

def suma(x, y):
    return x + y


suma_nr = suma

print("suma = " + str(suma_nr(3, 4)))


# functii ca parametru

def increment(x):
    return x + 1


def increment2(x):
    return x + 2


def aplica_functie(functie, argument):
    return functie(argument)


print("aplica_functie = " + str(aplica_functie(increment, 3)))
print("aplica_functie = " + str(aplica_functie(increment2, 3)))

# operatori ca functii
import operator

print(operator.mul(5, 6))
print(operator.add(5, 6))


def aplica_operator(operator, a, b):
    return operator(a, b)


print(aplica_operator(operator.add, 3, 7))
print(aplica_operator(operator.mul, 3, 7))

# functii anonime
print("lambda:")
print((lambda x: x + 5)(9))

lambda1 = lambda x: x + 5

print(lambda1(5))


# echivalent def
def lambda2(x):
    return x + 5


print(lambda2(5))


def increment_decrement(optiune):
    if optiune:
        return lambda x: x + 1
    else:
        return lambda x: x - 1


inc = increment_decrement(True)
dec = increment_decrement(False)
print("increment decrement")
print(inc(4))
print(dec(4))


# compunerea functiilor

def f(x):
    return x + 3


def g(x):
    return x * 2


print("compunere")
print(f(g(2)))


def comp(f, g):
    return lambda x: f(g(x))


fg = comp(f, g)

print(fg(2))

# parametrii default


def test(a, b=0, c=0):
    print("a = {0}; b = {1}; c= {2}".format(a, b, c))


test(1, 2, 3)
test(3)
test(3, c=4)

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
