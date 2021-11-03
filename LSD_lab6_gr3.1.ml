open Printf;;
open Set;;
(*definim multime de siruri de caractere*)
module SetString = Set.Make(String);;

let ms = SetString.add "Ion" (SetString.add "Maria" SetString.empty);;

(*afisam multime de siruri de caractere*)
SetString.iter (fun x -> printf "%s " x) ms;;


module Int = struct
  type t = int
  let compare = compare (* echivalent: let compare = Pervasives.compare *)
end

(*definim multime de intregi*)
module SetInt = Make(Int);;

let m1 = SetInt.add 1 (SetInt.add 2 (SetInt.add 3 SetInt.empty));;
SetInt.iter (fun x -> printf "%d " x) m1;;


(*1. Scrieți o funcție care ia ca parametru o mulțime de intregi
  și o tipărește, folosind iteratorul S.iter pentru a parcurge elementele.
  Afișați mulțimea pe o linie, între acolade { } și cu virgulă între elemente.

  print m1 = {1, 2, 3}
*)

let print_multime_int m =
  let first = SetInt.choose m in
  let rest = SetInt.remove first m in 
  printf "{";
  printf "%d" first;
  SetInt.iter (fun x -> printf ", %d" x) rest;
  printf "}";;


print_multime_int m1;;


(* functie care ia ca parametru o lista de int si 
construieste multimea elementelor listei*)

let rec set_of_intlist l = match l with
  | [] -> SetInt.empty
  | h::t -> SetInt.add h (set_of_intlist t);;

(*
add 1 (add 2 (add 3 .... set.empty))
*)

let m2 = set_of_intlist [1;2;3;4;5;9;7];;
print_multime_int m2;;

(*
2. Asemănător cu funcția set_of_intlist, scrieți o funcție care ia o listă de
perechi (de tip precizat) și returnează mulțimea elementelor de pe prima poziție
din fiecare pereche. *)

let rec set_of_intpair lp = match lp with
  | [] -> SetInt.empty
  | (a,b)::t -> SetInt.add a (set_of_intpair t);;

let m3 = set_of_intpair [(1,2);(3,4);(15,6)];;
print_multime_int m3;;

(*multime de perechi de int*)
module IntPair = struct
  type t = int*int
  let compare = compare 
end

module IntPairSet = Make(IntPair);;

let mp = IntPairSet.add (1,2) (IntPairSet.add (4,5) IntPairSet.empty);;

IntPairSet.iter (fun (a,b) -> printf "(%d,%d) " a b) mp;;                                 
                                 
(*5. Scrieți o funcție care ia o mulțime de mulțimi (de exemplu, de șiruri), 
  și returnează reuniunea (variantă: intersectia) mulțimilor. *)

module SetSetInt = Make(SetInt);;

let mm = SetSetInt.add m1 (SetSetInt.add m2 (SetSetInt.add m3 SetSetInt.empty));;

(*afisare multime de multimi de int*)
SetSetInt.iter (fun m -> print_multime_int m) mm;;

(*uniunea a doua multimi de intregi*)
print_multime_int (SetInt.union m1 m3);;

let mul_union mm =
  SetSetInt.fold (fun m rezultat -> SetInt.union rezultat m) mm SetInt.empty;;

print_multime_int (mul_union mm);;

(*TEMA: EX 3,4,6*)







                               