(deffacts MAIN::people
   (name Albert)
   (name Nancy))

(defrule MAIN::drop-nancy
   ?name <- (name Nancy)
   =>
   (retract ?name))

