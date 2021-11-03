open Printf;;
(*creaza o multime de siruri de caractere*)
module SetString = Set.Make(String);;
(*adaugare*)
let ms = SetString.add "B" (SetString.add "A" SetString.empty);;
(*afisare*)
SetString.iter (fun x -> printf "%s " x) ms;;

  
(*multime de intregi*)
module Int = struct
  type t = int
  let compare = compare
end

  (*
let compare_pairs p1 p2 =
  ...
  
(1,4); (2,1); (3,6)
*)

module SetInt = Set.Make(Int);;

let m1 = SetInt.add 5 ( SetInt.add 1 (SetInt.add 7 SetInt.empty));;
SetInt.iter  (fun x -> printf "%d " x) m1;;



(*multime de perechi intregi : (a,b) *)

module IntPair = struct
  type t = int*int
  let compare = compare
end


module SetPairInt = Set.Make(IntPair);;
let mpi = SetPairInt.add (1,2) (SetPairInt.add (3,4) SetPairInt.empty);;
SetPairInt.iter  (fun (a,b) -> printf "(%d,%d) " a b) mpi;;


(*1. Scrieți o funcție care ia ca parametru o mulțime de intregi
  și o tipărește, folosind iteratorul S.iter pentru a parcurge elementele. 
  Afișați mulțimea pe o linie, între acolade { } și cu virgulă între elemente. *)

let print_multime_int m = 
  let first = SetInt.choose m in 
  let rest = SetInt.remove first m in 
  printf "{";
  printf "%d" first;
  SetInt.iter  (fun x -> printf ", %d" x) rest;
  printf "}";;

print_multime_int m1;;


(*2. Asemănător cu funcția set_of_intlist, scrieți o funcție care ia o listă 
  de perechi (de tip precizat) și returnează mulțimea elementelor de pe prima 
  poziție din fiecare pereche .

set_of_intlist - ia o lista de intregi [1;2;3] 
*) 
let rec set_of_intlist l = match l with
  | [] -> SetInt.empty
  | h::t -> SetInt.add h (set_of_intlist t);;
  

(*  [1;2;3] 
    add 1 ( add 2 (add 3 SetInt.empty) *)

let m2 = set_of_intlist [1;2;3;4;5];; 
print_multime_int m2;;

(*varianta cu fold_left*)
let set_of_intlist_fold l = 
  List.fold_left (fun m el-> SetInt.add el m) SetInt.empty l;;

let m3 = set_of_intlist_fold [7;8;9];; 
print_multime_int m3;;


(*. Scrieți o funcție care ia o mulțime de mulțimi (de exemplu, de șiruri), 
  și returnează reuniunea mulțimilor. TIPUL: int*)
print_multime_int m1;;
print_multime_int m2;;


print_multime_int (SetInt.union m1 m2);;

module SetSetInt = Set.Make(SetInt);;

let mm = SetSetInt.add m3 (SetSetInt.add m2 (SetSetInt.add m1 SetSetInt.empty));;
SetSetInt.iter (fun m -> print_multime_int m) mm;;

let union_m mm =
  SetSetInt.fold (fun m rezultat-> SetInt.union m rezultat) mm SetInt.empty;;

print_multime_int (union_m mm);;,

(*Tema: ex 3,4,5 (intersectia), 6*)
