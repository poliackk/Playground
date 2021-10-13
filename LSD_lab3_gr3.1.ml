open Printf;; 

[];;

['a';'b'];;

[1;2;3];;

5::[1;2;3;4];;
6::5::[1;2];;


(*
:: - introducere element in fata listei
cap::coada
ex: [1;2;3;4] cap = 1; coada = [2;3;4]; 1::[2;3;4]
head::tail
h::t
1::[2;3] <=> [1;2;3]
*)

(*afisare lista de intregi element cu element*)
let rec afisare_lista l = match l with
  |[] -> printf "\n"
  |h::t -> printf "%d\n" h; afisare_lista t;;


afisare_lista [1;2;3];;


(* adaugarea cifrelor unui numar intr-o lista *)

let rec cifre n =
  if n <= 9 then [n]
  else (n mod 10)::cifre (n/10);;
;;

(*
cifre 123; n = 123

3::cifre 12
          2::cifre 1
              [1]
              
              3::2::[1] = [3;2;1]
*) 
cifre 12345;;

(* scrieti o functie care primeste ca parametru un nr n si returneaza lista
   tuturor cifrelor (in ordine)*)
(*
cifre 123; n = 123; => aux 123 []

aux 123 []
     aux 12 3::[]
        aux 1 2::[3]
            1::[2;3] = [1;2;3]

*) 

let cifre n = 
  let rec aux n l=
    if n <= 9 then n::l
    else aux (n/10) ((n mod 10)::l)
  in 
  aux n [];;

cifre 12345;;
  


(*suma elementelor din lista*)
let rec suma l = match l with
  |[] -> 0
  |h::t -> h + (suma t);;

suma [1;2;3;4];;


(*suma elementelor pare din lista*)
let rec suma_p l = match l with
  |[] -> 0
  |h::t -> if h mod 2 = 0 then h + (suma_p t) else suma_p t;;

suma_p [1;2;3;4];;



(*TEMA: 1,2,3 (la 1.c fara filter/fold)*) 


