open Printf;;
module Dict= Map.Make(String);;

let dict5 = Dict.add "a" "b" (Dict.add "b" "c" (Dict.add "d" "e" ( Dict.add "e" "f" 
                                                                     (Dict.add "f" "e" (Dict.add "y" "x" Dict.empty)))));;

(*NOTE: Compunerea R2 o R1 ⊆ A × C e relatia R2 o R1 = {(x, z) | exista y ∈ B | (x, y) ∈ R1 si (y, z) ∈ R2}*
10. Fie un dicționar de la șiruri la siruri reprezentând o funcție parțială f.
a) Scrieți o funcție (având ca parametru un astfel de dicționar) care returnează dicționarul reprezentând f2 = f ⚪ f,
    
*)

let compunere dict =
  Dict.fold (
    fun key value new_dict -> 
      try
        let new_val  = Dict.find value dict in 
        Dict.add key new_val new_dict
      with Not_found -> new_dict
  ) dict Dict.empty;;

Dict.bindings (compunere dict5);;



(*general tree*)

type 'a tree = T of 'a * 'a tree list;;

let t1 = T(3,[T(2,[]);T(1,[]);T(10,[])]);;

let rec print_tree = function
  |T(root,[])-> printf "%d " root;
  |T(root,child_list)->  printf "%d \n" root; List.iter (fun x-> print_tree x) child_list;;

print_tree t1;;


(*binary tree*)

type 'a btree = Nil| BT of 'a btree * 'a * 'a btree;;

let bt1 = BT(BT(Nil, 3,Nil), 5, BT(Nil, 6, BT(Nil, 10,Nil)));;


(*afisare preordine -> root then left then right*)
let rec print_btree = function
  |Nil -> ();
  |BT(left,root,right)-> printf "%d " root; print_btree left; print_btree right;;

print_btree bt1;; 

(*afisare inorder -> left then root then right*)
let rec print_btree_inorder = function
  |Nil -> ();
  |BT(left,root,right)-> print_btree_inorder left; printf "%d " root; print_btree_inorder right;;

print_btree_inorder bt1;;

(*afisare postorder -> left then right then root*)
let rec print_btree_postorder= function
  |Nil -> ();
  |BT(left,root,right)-> print_btree_postorder left; print_btree_postorder right; printf "%d " root;;

print_btree_postorder bt1;;

(*functie care construieste lista nodurilor unui arbore - preordine*)

let rec to_list_preorder = function
  |Nil -> [];
  |BT(left,root,right)-> root::( to_list_preorder left @ to_list_preorder right);;

to_list_preorder bt1;; 


(*numara nodurile arborelui binar*)
let rec count = function
  |Nil -> 0;
  |BT(left,root,right)-> 1 + count left + count right;;


count bt1;; 

(*inaltimea arborelui binar*)

let rec height = function
  |Nil -> 0
  |BT(left, root, right) -> 1 + max (height left)  (height right);;

height bt1;;


(*tema: ex1 (arbori binari) si ex2*)
