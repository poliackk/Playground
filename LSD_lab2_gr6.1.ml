let max a b =
  if a<b then b
  else a;;

max 7 3;;

let swap a b =
  if a <= b then a,b
  else b,a;;

(*mediana
  
  3 1 2  -> mediana = 2  |    1 3 2   | 1 2 3 
    2 3 1 | 2 3 1   | 2 1 3
*)

let mediana a b c =
  let a,b = swap a b in 
  let b,c = swap b c in 
  let a,b = swap a b in 
  b;;

mediana 3 1 2;;
mediana 2 3 1;;
  

(*functie anonima*)
(fun x -> x + 3) 2;;

(*pattern match*)
(*varianta 1*)
let p1 x = match x with 
  |'a' -> 1
  |'b' -> 2
  | _ -> 13;; (* _ = oricare alt caracter*)

p1 'a';;
p1 'b';;
p1 'v';;

(*varianta 2*)
let p2 = function 
  |'a' -> 1
  |'b' -> 2
  | _ -> 13;; (* _ = oricare alt caracter*)

p2 'a';;
p2 'b';;
p2 'v';;


(*
   3! = 1 * 2 * 3 sau 3 * 2 * 1
   
   *)
let rec fact n =
  if n == 1 then 1
  else n * fact (n-1);;

fact 3;;

let rec fact_pattern n = match n with
  |1 -> 1
  |_ -> n * fact_pattern (n-1);;

fact_pattern 3;;


(* fibbonaci *)

let rec fibo n =
  if n < 2 then 1
  else fibo (n-1) + fibo (n-2);;

fibo 4;;

(* n = 12345  n = 123
ultima cifra se extrage cu n mod 10
     apoi numarul se imparte la 10 pentru a elimina ultima cifra n = n/10
       repetare pana cand n == 0
*)

let rec suma_cifre n =
  if n == 0 then 0
  else (n mod 10) + suma_cifre (n/10);;

suma_cifre 123;;

type expr = I of int
          | Adunare of expr * expr
          | Scadere of expr * expr
          | Mul of expr * expr
          | Div of expr * expr;;


let rec eval = function
  | I i -> i
  | Adunare (e1, e2) -> eval e1 + eval e2
  | Scadere (e1, e2) -> eval e1 - eval e2
  | Mul (e1, e2) -> eval e1 * eval e2
  | Div (e1, e2) -> eval e1 / eval e2;;


eval (I 3);;

eval (Adunare (I 3,I 2));; (* 3 + 2*)

eval (Scadere(Adunare (I 3,I 2), I 5));; (* 3 + 2 - 5 *)
                   

(*TEMA: 2,3,4,5 http://staff.cs.upt.ro/~marius/curs/lsd/lab2.html*)




