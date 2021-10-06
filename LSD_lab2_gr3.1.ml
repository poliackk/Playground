(*mediana*)

let swap a b =
  if a <= b then a,b else b,a;;

let mediana a b c = 
  let a, b = swap a b in
  let b, c = swap b c in 
  let a, b = swap a b in
  b;;

mediana 2 3 1;;


(*functie anonima*)
(fun x -> x * 2) 5;;

let match_ex x = match x with
  |0 -> 0
  |1 -> 2
  |_ -> 13;;

match_ex 1;;

let match_ex2 x = match x with
  |'a' -> 0
  |'b' -> 2
  |_ -> 13;;

match_ex2 'v';;

(*factorial 3! = 3*2*1 
3 * fact 2
  2 * fact 1
  1 * fact 0
  

*)

let rec fact n = 
  if n == 0 then 1
  else 
    n * fact (n-1);;

fact 3;;

let rec fact2 n = match n with
  |0 -> 1
  |_ -> n * fact2 (n-1);;

fact2 3;;

(*
   1 ; x < 2
  x-1 +  x-2  ; x >=2
*)


let rec fibo x = 
  if x<2 then 1
  else
    fibo (x-1) + fibo (x-2);;

fibo 4;;



(*
n = 12345
extragem ultima cifra cu n mod 10
eliminam ultima cifra cu n/10 
repetam pana cand n = 0
*)

let rec suma n=
  if n == 0 then 0
  else (n mod 10) + suma (n/10);;

suma 1234;;

type expr = I of int
          | Add of expr * expr
          | Sub of expr * expr
          | Mul of expr * expr
          | Div of expr * expr;;

(* 2 + 4  ->   Add (I 2, I 4) *)

let rec eval = function
  | I i -> i
  | Add (e1, e2) -> eval e1 + eval e2
  | Sub (e1, e2) -> eval e1 - eval e2
  | Mul (e1, e2) -> eval e1 * eval e2
  | Div (e1, e2) -> eval e1 / eval e2;;

eval (Add (I 2, I 4));;

(*Tema : ex 2,3,4,5 *)

