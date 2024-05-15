;Assignment 3
;Goal:Find and display all students who major in CS.
;Adrian Ray
;due:03/16/2023

(deftemplate MAIN::student ;given template
   (slot name)
   (slot major))

(deffacts MAIN::people ;defines all students
   (student (name Albert) (major CS)) 
   (student (name Henry) (major EE))
   (student (name Tony) (major CE))
   (student (name Rose) (major CS)))

(defrule MAIN::FindCS ;program to find CS majors
   (student (name ?name) (major CS)) ;find any name that has the major set to CS
   =>
   (printout t ?name " majors in CS." crlf)) ; print the found name of CS major

