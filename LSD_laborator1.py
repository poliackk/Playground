
def print_hi(name):
    print("Hi, "+name)


def suma(a, b):
    return a+b


def min_numere(a, b):
    if a > b:
        return b
    else:
        return a


if __name__ == '__main__':
    print_hi('Student')

    a = 10
    print(a)

    b = 35.6
    print(b)

    c = 'student'
    print(c)

    print("suma="+str(suma(7, 5)))

    print("min="+str(min_numere(6, 3)))
