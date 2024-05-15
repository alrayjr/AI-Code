;Clips Exercise
;rewriting the eyecolor.clp by using ordered facts

;fact base
(deffacts people
	(person Jane blue red)
	(person Joe black brown)
	(person Jack blue black))

;knownledge base
(defrule find-blue-eye
	(person ?name blue ?hair)
	=>
	(printout t ?name " has blue eyes." crlf))