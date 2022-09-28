def print_hi(name):
    print("Hi, " + name)


def suma(a, b):
    return a + b


def min_numere(a, b):
    if a > b:
        return b
    else:
        return a


def max_numere(a, b):
    if a > b:
        return a
    else:
        return b


# comentariu pe o linie
'''
Exercițiul 1: Ultima cifră.
Scrieți o funcție în Python care returnează ultima cifră a numărului primit ca parametru.
'''


def ultima_cifra(nr):
    return nr % 10


def citire_numar():
    c = input("c=")

    # verificare daca este cifra
    if 0 < int(c) < 10:
        print("cifra")


'''
Exercițiul 4: An bisect
Scrieți o funcție în Python care determină dacă un an (întreg) dat ca parametru e bisect, 
returnând un boolean. Dacă un an e bisect sau nu, se poate determina după următoarele reguli 
(va trebui sa le reformulați sau reordonați pentru a scrie funcția):

a) un an divizibil la 4 e bisect, altfel nu
b) prin excepție de la a), anii divizibili cu 100 nu sunt bisecți
c) prin excepție de la b), anii divizibili cu 400 sunt bisecți
'''


def an_bisect(an):
    if an % 4 == 0:
        if an % 100 == 0:
            if an % 400 == 0:
                return True
            else:
                return False
        else:
            return True
    else:
        return False


'''
Exercițiul 6: Interval
Implementați o funcție în Python care primește ca parametri trei numere naturale a, b, respectiv c, 
și returnează True în cazul în care numarul c se află în interiorul intervalului  [a; b], altfel returnează False.
Notă: În cadrul implementarii nu se vor utiliza structuri de tipul  if...elif...else. 
'''


def interval(a, b, c):
    if a <= c <= b:
        return True
    else:
        return False

'''
Exercițiul 7: Sort
Implementați o funcție în Python care primește ca parametri trei numere, a, b, respectiv c, și returnează cele 3 numere 
în ordine descrescatoare.
Notă: În cadrul implementarii nu se vor utiliza structuri de tipul  if...elif...else.
Remarcă: Se recomandă utilizarea funcților predefinite min() și max(). Ambele funcții pot lua
un număr variabil de parametri sau o listă și returnează minimul/maximul. 
'''

def descrescator(a, b, c):
    maxim = max(max(a, b), c)
    minim = min(min(a, b), c)
    mediana = a + b + c - maxim - minim

    return maxim, mediana, minim


if __name__ == '__main__':
    print_hi('Student')

    a = 10
    print(a)

    b = 35.6
    print(b)

    c = 'student'
    print(c)

    print("suma=" + str(suma(7, 5)))

    print("min=" + str(min_numere(6, 3)))
    print(min(45, 13))

    print("max=" + str(max_numere(6, 3)))
    print(max(45, 13))

    n = 76
    print("ultima cifra a numarului " + str(n) + " este: " + str(ultima_cifra(n)))

    # citire_numar()
    print(an_bisect(2022))
    print(an_bisect(2024))
    print("interval:")
    print(interval(4, 18, 7))
    print(interval(12, 18, 7))

    maxim, mediana, minim = descrescator(48, 17, 1)
    print(maxim)
    print(mediana)
    print(minim)
    
    # TEMA: ex 9 si 10

    
