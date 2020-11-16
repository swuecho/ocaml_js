open Js_of_ocaml

let square_ml x = x * x

let _ =
  Js.export "myMathLib"
    (object%js
       method add x y = x +. y
       method abs x = abs_float x
       method square = square_ml
       val zero = 0.
   end)

