open Printf;;

2+3;; 
2.5 +. 3.6;;


let add x y = x+y;;

add 3 4;;
add 5 6;;

let min a b = 
  if a < b then printf "%d" a
  else printf "%d" b;;

min 3 4;;
min 7 4;;


printf "%d" ((fun x -> x + 2) 5);;

printf "%d" ((fun x -> x + 2) 10);;

let f x = 2 * x ;;
let f x = 2 * x + 1;;

f 3;;