let l = [1;2;3;4;5;6;7;8];;

List.hd l;;
List.tl l;;
List.length l;;
List.nth l 4;;(*numaratoarea incepe de la 0*)
        
(*iter f [a1; ...; an] applies function f in turn to a1; ...; an.
  It is equivalent to begin f a1; f a2; ...; f an; () end.      *)          
List.iter (Printf.printf "%d ") l;;

(*map f [a1; ...; an] applies function f to a1, ..., an, and builds the
  list [f a1; ...; f an] with the results returned by f. *)
let l2 = List.map (fun x -> x*2) l;;


(*filter f l returns all the elements of the list l that satisfy the predicate f.
  The order of the elements in the input list is preserved.*)
(*returneaza lista cu toate elementele pare ale listei date ca parametru*)
let l3 = List.filter (fun x -> (x mod 2 = 0)) l;;
              
  
  (*
  fold_left f init [b1; ...; bn] is f (... (f (f init b1) b2) ...) bn.
  fold_right f [a1; ...; an] init is f a1 (f a2 (... (f an init) ...)).
  
  fold_left f init [b1; ...; bn] - lista se parcurge de la stanga la dreapta
  fold_right f [a1; ...; an] init - lista se parcurge de la dreapta la stanga
  
  fold_left f init [b1; ...; bn] - in stanga acumulatorul (init)
  fold_right f [a1; ...; an] init - in dreapta acumulatorul (init)
  
  *)
  
(*numarul compus din cifrele dintr-o lista*)

List.fold_left (fun nr element_lista -> nr*10+element_lista) 0 [1;2;3;4];;

List.fold_right (fun element_lista nr -> nr*10+element_lista) [1;2;3;4] 0;;

(*tema: ex 5, 6, 8, 9*)


