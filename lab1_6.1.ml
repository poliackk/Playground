open Printf;;

2 + 3;;

2.4 +. 3.1;;


(*  

int f(int x)
{
 return x *2;
}
 
   *) 

let f x = x * 2;;

let f x = x * 2 + 1;;

f 2;;


let max a b = 
  if a > b then printf "%d\n" a
  else printf "%d\n" b;;

max 3 4;; 
max 10 4;;


let max c b=
  if c > b then c 
  else b;;

max 2 8;; 
max 2.1 8.1;;