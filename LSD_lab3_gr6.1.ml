open Printf;; 

[];;
[1];;
['a';'a'];;
[1;2;3;4];;

(*
element::[lista] - adauga la inceputul listei elementul
1::[2;3] <=> [1;2;3]
cap::coada; capul - un element; coada - lista elementelor ramase

head::tail
h::t

*)

4::[1;2;3];;
(*afisarea unei liste de intregi*)
let rec afisare_lista l = match l with
  |[]-> printf "\n"
  |h::t-> printf "%d\n" h; afisare_lista t;;

afisare_lista [1;2;3;4];;

(*suma elementelor unei liste*)
let rec suma l = match l with
  |[]-> 0
  |h::t-> h + (suma t);;

suma [1;2;3;4];;


(*suma elementelor pare ale unei liste*)
let rec suma l = match l with
  |[]-> 0
  |h::t-> if h mod 2 = 0 then h + (suma t)
      else suma t;;

suma [1;2;3;4];;

(* scrieti o functie care primeste ca parametru un numar n si returneaza
lista cifrelor numarului n (in ordine inversa)*)


(*
cifre_to_list 123; n = 123
     3:: cifre_to_list 12
                2:: cifre_to_list 1
                         [1]
                         3::2::[1] = [3;2;1]
*)

let rec cifre_to_list_inv n = 
  if n <= 9 then [n]
  else (n mod 10) :: cifre_to_list_inv (n/10);;

cifre_to_list_inv 123;;

(* scrieti o functie care primeste ca parametru un numar n si returneaza
lista cifrelor numarului n*)


(*
cifre_to_list 123; n = 123
aux 123 []
    aux 12  3::[]
        aux 1 2::[3]
            1::[2;3] = [1;2;3]
*)

let cifre_to_list n = 
  
  let  rec aux n l =
    if n <= 9 then n::l 
    else aux (n/10) ((n mod 10)::l) 
  in 
  
  aux n [];;
  
cifre_to_list 12345;;

(*TEMA: ex 1,2,3; 1.c fara fold si filter

List.nth <=> let rec nth n *)
  
  

