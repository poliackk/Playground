def print_hi(name):
    print("Hi, " + name)


def suma(a, b):
    return a + b


def min_nr(a, b):
    if a < b:
        return a
    else:
        return b


def max_nr(a, b):
    if a > b:
        return a
    else:
        return b


# citire si verificare daca nr citit este par
def citire_tastatura():
    nr = input("nr=")

    if int(nr) % 2 == 0:
        print("este par")
    else:
        print("este impar")


'''
Exercițiul 1: Ultima cifră
Scrieți o funcție în Python care returnează ultima cifră a numărului primit ca parametru.
'''


def ultima_cifra(nr):
    return nr % 10


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
    if a <= c <= b:  # c >= a and c <=b:
        return True
    else:
        return False


'''
Exercițiul 7: Sort
Implementați o funcție în Python care primește ca parametri trei numere, a, b, respectiv c,
 și returnează cele 3 numere în ordine descrescatoare.
Notă: În cadrul implementarii nu se vor utiliza structuri de tipul  if...elif...else.
Remarcă: Se recomandă utilizarea funcților predefinite min() și max(). Ambele funcții pot lua un
 număr variabil de parametri șau o listă și returnează minimul/maximul. 
'''
def sort(a, b, c):
    minim = min(min(a, b), c)
    maxim = max(max(a, b), c)
    mediana = a + b + c - minim - maxim

    return maxim, mediana, minim

if __name__ == '__main__':
    print_hi('Student')

    n = 10
    n += 1  # incrementare cu 1
    print(n)

    m = 34.2
    print(m)

    k = 'student'
    print(k)

    print("suma = " + str(suma(4, 8)))

    # print(min_nr(4, 25))
    print("min = " + str(min_nr(4, 25)))
    print(min(3, 1))

    print("max = " + str(max_nr(4, 25)))
    print(max(3, 1))

    # citire_tastatura()
    print(ultima_cifra(5236))

    print("an bisect:")
    print(an_bisect(2022))
    print(an_bisect(2024))

    print("interval:")
    print(interval(2, 10, 8))
    print(interval(2, 10, 12))

    t = sort(45, 1, 75)
    print(t)
    maxim, mediana, minim = sort(45, 1, 75)
    print(maxim)
    print(mediana)
    print(minim)
    
    # TEMA: ex 9 si 10
    
    '''
    Exercițiul 9: Cerc
Implementați o funcție în Python care primește ca parametru raza unui cerc și returnează atât lungimea discului cât și aria acestuia.

Exercițiul 10: Numărul de zile
Implementați o funcție în Python care primește ca parametri doi ani (numere întregi) și returnează numărul de zile dintre aceștia (Puteți utiliza funcția implementată la exercițiul 4).
Nota: Nu este permisa utilizarea modulului datetime sau a oricărui alt modul similar.

'''
