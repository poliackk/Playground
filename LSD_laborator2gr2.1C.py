# func ca variabila
def suma(a, b):
    return a + b


suma_nr = suma

print("suma = " + str(suma_nr(3, 4)))


# func ca parametru

def increment(x):
    return x + 1


def aplica(f, x):
    return f(x) * 5


print("aplica = " + str(aplica(increment, 2)))

# operatori ca parametru
import operator

print("suma = " + str(operator.add(5, 6)))


def aplica_operator(op, a, b):
    return op(a, b)


print(aplica_operator(operator.add, 1, 4))
print(aplica_operator(operator.mul, 1, 4))
print(aplica_operator(operator.sub, 7, 4))

# functii anonime
print("functie anonima")
print((lambda x: x + 4)(5))  # fara sa specificam numele

functie = lambda x: x + 4  # cu nume
print(functie(5))


def functie_(x):
    return x + 4


print(functie_(5))


def increment_decrement(option):
    if option:
        return lambda x: x + 1
    else:
        return lambda x: x - 1


inc = increment_decrement(True)
dec = increment_decrement(False)
print("increment decrement:")
print(inc(3))
print(dec(7))


def f(x):
    return x + 1


def g(x):
    return x * 3

print("compunere:")

print(f(g(1)))

def comp(f,g):
    return lambda x:  f(g(x))


fg = comp(f, g)
print(fg(1))


#parametrii default

def test(a, b=0, c=False, d=2):
    print("a = {0}; b= {1}; c={2}".format(a, b, c))


test(1, 2, True)
test(1, 2)
test(2)
test(1, c=True)
# test(b=2, c=True)


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