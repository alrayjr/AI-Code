; Given the follow network:
; There is a directional link from A to B
; There is a directional link from B to C
; There is a directional link from B to D
; There is a directional link from D to E
; There is a directional link from E to F
; Please find and display its routing table.
;define template
(deftemplate MAIN::path
   (multislot nodes))

(deffacts MAIN::direct-paths
   (path (nodes A B))
   (path (nodes B C))
   (path (nodes B D))
   (path (nodes D E))
   (path (nodes E F)))

(defrule MAIN::indirect-paths
   (path (nodes $?begin ?temp))
   (path (nodes ?temp $?end))
   =>
   (assert (path (nodes $?begin ?temp $?end))))

(defrule MAIN::print-paths
   (path (nodes $?nodes))
   =>
   (printout t "Path: " $?nodes crlf))



