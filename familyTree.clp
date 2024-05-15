;Assignment 4, Adrian Ray, 3/21/2023
; Given the follow family tree:
; Albert is the father of Tony and Andy
; Tony is the father of Allen and Newman
; Andy is the father of Mendy and Nancy
;Please find and display all cousins of dynamically entered name.

;define templates
(deftemplate name-entered
(slot name))

;the fact base
(deffacts the-family-tree
(father-of Albert Tony)
(father-of Albert Andy)
(father-of Tony Allen)
(father-of Tony Newman)
(father-of Andy Mendy)
(father-of Andy Nancy))

;the knowledge base
(defrule get-name
=>
(printout t "Please enter a name: ")
(assert (name-entered (name (read)))))

(defrule find-cousins
(name-entered (name ?name))
(father-of ?papa ?name)
(father-of ?grandpa ?papa)
(father-of ?grandpa ?uncle&~?papa)
(father-of ?uncle ?cousin)
=>
(printout t ?cousin " is a cousin of " ?name crlf))

(defrule not-here
(name-entered (name ?name))
(not (father-of ?test ?name))
=>
(printout t ?name " is not in the list "crlf))
