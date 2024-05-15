;programming project

;fact base
(deffacts initalization
	(state 0)
	(path 0))
	
;knownledge base

(defrule insert-nickle
	(path $?begin ?end) ;get current path 
	(test (<= (+ ?end 5)55)) ;test if adding 25 goes over 55
	(not (exists (state =(+ ?end 5)))) ; make sure state doesnt exist already
	=> ;if all thats good do the RHS
	(assert (state =(+ ?end 5))) ;since its safe to do so based LHS do this
	(assert (path $?begin ?end =(+ ?end 5)))) ; extend current path

(defrule insert-quarter
	(path $?begin ?end) ;get current path 
	(test (<= (+ ?end 25)55)) ;test if adding 25 goes over 55
	(not (exists (state =(+ ?end 25)))) ; make sure state doesnt exist already
	=> ;if all thats good do the RHS
	(assert (state =(+ ?end 25))) ;since its safe to do so based LHS do this
	(assert (path $?begin ?end =(+ ?end 25)))) ; extend current path
	


(defrule complete
	(path $?begin 55)
	=>
	(bind ?drink (create$ $?begin 55))
	(printout t "You have purchased a drink, congrats i guess." crlf)
	(printout t "Path to drink-land: " $?drink crlf)
	)