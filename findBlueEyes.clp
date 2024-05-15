(deftemplate MAIN::person
   (slot name)
   (slot eyes)
   (slot hair))

(deffacts MAIN::people
   (person (name Jane) (eyes blue) (hair red))
   (person (name Joe) (eyes black) (hair brown))
   (person (name Jack) (eyes blue) (hair black)))

(defrule MAIN::find-blue-eye
   (person (name ?name) (eyes blue))
   =>
   (printout t ?name " has blue eyes. " crlf))

