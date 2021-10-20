let lista = [1;2;3;4;5;6;7];;

List.nth lista 2;;
List.hd lista;;
List.tl lista;;
List.length lista;;



(*iter f [a1; ...; an] applies function f in turn to a1; ...; an.
  It is equivalent to begin f a1; f a2; ...; f an; () end.*)
List.iter (Printf.printf "%d\n") lista;;

(*map f [a1; ...; an] applies function f to a1, ..., an, 
  and builds the list [f a1; ...; f an] with the results returned by f. *)
List.map (fun x -> x*2+1) lista;;

(*filter f l returns all the elements of the list l that satisfy the predicate f.
  The order of the elements in the input list is preserved.*) 
List.filter (fun x -> (x mod 2 = 1)) lista;;

(*
fold_left f init [b1; ...; bn] is f (... (f (f init b1) b2) ...) bn.
fold_right f [a1; ...; an] init is f a1 (f a2 (... (f an init) ...)). 

fold_left f init [b1; ...; bn] - acumulatorul (init) la stanga listei
fold_right f [a1; ...; an] init - acumulatorul (init) la dreapta listei

fold_left f init [b1; ...; bn] - lista se parcurge de la stanga la dreapta
fold_right f [a1; ...; an] init - lista se parcurge de la dreapta la stanga
*)

(*preconditii: elementele listei sunt cifre*)
List.fold_left (fun nr el-> nr*10+el) 0 [1;2;3;4];;

List.fold_right (fun el nr-> nr*10+el) [1;2;3;4] 0;;

(*tema: 5, 6, 8, 9 *)