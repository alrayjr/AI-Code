; Given the follow network:
;    There is a directional link from A to B
;    There is a directional link from B to C
;    There is a directional link from B to D
;    There is a directional link from D to E
;    There is a directional link from E to F
; Please find and display its routing table.

;the fact base
(deffacts the-given-paths
	(path A B)
	(path B C)
	(path B D)
	(path D F)
	(path E F))
;Knownledge base
(defrule infer-indirect-paths
	(path ?begin ?temp)
	(path ?temp ?end)
	=>
	(assert (path ?begin ?end)))

;print paths 
(defrule print-paths
	(path ?begin ?end)
	=>
	(printout t "there is a path from "?begin " to " ?end crlf))