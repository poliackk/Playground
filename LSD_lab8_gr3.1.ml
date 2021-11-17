open Printf;;
module Dict= Map.Make(String);;

let dict5 = Dict.add "a" "b" (Dict.add "b" "c" (Dict.add "d" "e" ( Dict.add "e" "f" 
                                                                     (Dict.add "f" "e" (Dict.add "y" "x" Dict.empty)))));;

(*NOTE: Compunerea R2 o R1 ⊆ A × C e relatia R2 o R1 = {(x, z) | exista y ∈ B | (x, y) ∈ R1 si (y, z) ∈ R2}*
10. Fie un dicționar de la șiruri la șiruri reprezentând o funcție parțială f.
a) Scrieți o funcție (având ca parametru un astfel de dicționar) care returnează dicționarul reprezentând f2 = f ⚪ f,
    
*)


let compunere dict = 
  Dict.fold (fun key value new_dict ->
      try 
        let new_val = Dict.find value dict in 
        Dict.add key new_val new_dict
      with Not_found -> new_dict
    ) dict Dict.empty;;


Dict.bindings (compunere dict5);;



(*general tree*)

type 'a tree = T of 'a * 'a tree list;;

let t = T(2, [T(3,[]); T(6,[]); T(12,[])]);;

let rec print_tree = function
  |T(root,[]) -> printf "%d " root;
  |T(root,lt) -> printf "%d\n " root; List.iter (fun x -> print_tree x) lt;;

print_tree t;;


(*binary tree*)

type 'a btree = Nil| BT of 'a btree * 'a * 'a btree;;

let bt1 = BT( BT(Nil,3,BT(Nil,9,BT(Nil,19,Nil))),12,BT(Nil,6,Nil));;

(* afisare preorder - root then left then right*)
let rec print_bt = function
  |Nil -> ();
  |BT(left,root,right) ->  printf "%d " root; print_bt left; print_bt right;;


print_bt bt1;;

(* afisare inorder - left then root then right*)

let rec print_bt_inorder = function
  |Nil -> ();
  |BT(left,root,right) ->  print_bt left; printf "%d " root; print_bt right;;


print_bt_inorder bt1;;

(* afisare postorder - left then right then root*)

let rec print_bt_postorder = function
  |Nil -> ();
  |BT(left,root,right) ->  print_bt left; print_bt right; printf "%d " root;;


print_bt_postorder bt1;;



(*Scrieți o funcție care construiește lista 
nodurilor unui arbore binar, enumerate în i) preordine;*)


let rec to_list_preorder = function
  |Nil -> []
  |BT(left,root,right) ->  root ::(to_list_preorder left @ to_list_preorder right);;


to_list_preorder bt1;;

(*numara nodurile arborelui binar*)
let rec count_nodes = function
  |Nil -> 0
  |BT(left,root,right)-> 1 + count_nodes left + count_nodes right;;

count_nodes bt1;;

(*inaltimea arborelui binar*)
let rec height = function
  |Nil -> 0
  |BT(left,root,right)-> 1 + max  (height left)  (height right);;

height bt1;;


(*TEMA: ex 1 (doar pentru  arbore strict binar) si 2*)

(* cauta un nod in arbore, afisare noduri de pe un nivel *)


