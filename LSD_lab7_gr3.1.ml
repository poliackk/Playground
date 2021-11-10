open Printf;;

(*cheia este sir de caractere*)
module Dict = Map.Make(String);;

let dict1 = Dict.add "a" 7 (Dict.add "b" 1 (Dict.add "c" 2 Dict.empty));;

Dict.bindings dict1;;
Dict.iter (fun key value -> printf "%s - %d\n" key value) dict1;;

(*valoarea poate lua orice forma: int, string ...*)
let dict2 = Dict.add "a" "c" (Dict.add "b" "d" Dict.empty);;
Dict.bindings dict2;;

(*cheia este intreg*)
module DictInt = Map.Make(Int);;

let dict2 = DictInt.add 1 "c" (DictInt.add 2 "d" DictInt.empty);;
DictInt.bindings dict2;;



(* 1. Scrieți o funcție care ia o listă de asociere cu perechi de tip (șir, întreg)
   și creează un dicționar în care fiecare șir e asociat cu suma 
   tuturor valorilor cu care e asociat în listă.*)

let perechi = [("a",1);("b",2);("c",3);("a",7);("c",2)];;

(*
a - 8 ( 1 + 7 )
b - 2
c - 5 ( 3 + 2 )
*)

(*SOLUTIA 1*)

(* fold_right - parcurge elementele din l de la dreapta la stanga*)
let create_dict l =
  List.fold_right (fun (k,v) dict ->  if (Dict.mem k dict) 
                    then Dict.add k ((Dict.find k dict) + v) dict 
                    else Dict.add k v dict) l Dict.empty;;

(* mem key dict - verifica daca o cheie exista in dictionar*)
(* find key dict - returneaza valoarea din dictionar daca cheia exista; alfel arunca exceptie*) 
Dict.bindings (create_dict perechi);; 
Dict.mem "d" dict1;;


(*SOLUTIA 2*)

(* 'prindem' exceptia aruncata de find*)

let find_key key dict =
  try
    Dict.find key dict 
  with Not_found -> 0 ;;

find_key "d" dict1;;
Dict.find "d" dict1;;

let create_dict2 l =
  List.fold_right (fun (k,v) dict -> Dict.add k (find_key k dict + v) dict ) l Dict.empty;;

Dict.bindings (create_dict2 perechi);; 



(*5. Implementați cu ajutorul lui fold funcția standard map care construiește un 
  dicționar în care toate valorile au fost transformate folosind o funcție dată 
  ca parametru. *)
(*
BEFORE:
a - 2
b - 4
f - val * 2
AFTER:
a - 4
b - 8
*)

let map dict f =
  Dict.fold (fun key value new_dict -> Dict.add key (f value) new_dict) dict Dict.empty;;

Dict.bindings dict1;;
Dict.bindings (map dict1 (fun n -> n * 2));;

(*TEMA: ex 2,3,4*)
