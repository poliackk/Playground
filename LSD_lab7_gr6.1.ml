open Printf;;

(*cheia este sir de caractere*)
module Dict = Map.Make(String);; 

let dict1 =Dict.add "bd" 7 ( Dict.add "c" 2 (Dict.add "a" 1 Dict.empty));;
Dict.bindings dict1;;
Dict.iter (fun k v -> printf "%s - %d\n" k v) dict1;;


let dict2 =Dict.add "bd" "a" ( Dict.add "c" "B" (Dict.add "a" "D" Dict.empty));;
Dict.bindings dict2;;

(*cheia este de tipul intreg*)
module DictInt = Map.Make(Int);; 
let dict3 =DictInt.add 1 "a" ( DictInt.add 2 "B" (DictInt.add 3 "D" DictInt.empty));;
DictInt.bindings dict3;;

(*1. Scrieți o funcție care ia o listă de asociere cu perechi de tip 
  (șir, întreg) și creează un dicționar în care fiecare șir e asociat c
  u suma tuturor valorilor cu care e asociat în listă. *)

(*
a - 5 (3+2)
b - 4
c - 5

*)
(* SOLUTIA 1 *)
(*find key dict - intoarce valoarea asociata key-ului cautat in dictionarul dict
!! daca key-ul nu exista, o exceptie este aruncata!*)

Dict.find "a" dict1;;
Dict.find "afg" dict1;; (*not found; exceptia opreste executia functiei*) 
                                                                            
  (*mem key dict - intoarce true daca cheia exista in dictionar si false daca 
nu exista*)

Dict.mem "a" dict1;;(*true*)
Dict.mem "afg" dict1;; (*false*)

let lista_asociere = [("a",3);("b",4);("c",5);("a",2);("b",7)];;

let create_dict_asoc l =
  List.fold_right (fun (k,v) dict -> if Dict.mem k dict 
                    then Dict.add k (v + Dict.find k dict) dict
                    else Dict.add k v dict
                  ) l Dict.empty;;

Dict.bindings (create_dict_asoc lista_asociere);;


(* SOLUTIA 2 - cu exception handling *)
exception No;;

let find_key key dict =
  try
    Dict.find key dict
  with Not_found -> 0;; 

let create_dict_asoc2 l =
  List.fold_right (fun (k,v) dict -> Dict.add k (v + (find_key k dict)) dict
                  ) l Dict.empty;;

Dict.bindings (create_dict_asoc2 lista_asociere);;


(*5. Implementați cu ajutorul lui fold funcția standard map care construiește 
  un dicționar în care toate valorile au fost transformate folosind o funcție
  dată ca parametru. *)

let map dict f =
  Dict.fold (fun k v dict_rezultat -> Dict.add k (f v) dict_rezultat) dict Dict.empty;;
 
Dict.bindings dict1;; 
Dict.bindings (map dict1 (fun x -> x*2));;

(*TEMA: 2,3,4
["Ab","A","A","B","B","B","B"]

  Ab - 1
  A - 2
  B - 4
*)








