(deftemplate MAIN::path
   (slot from)
   (slot to))

(deffacts MAIN::the-given-paths
   (path (from A) (to B))
   (path (from B) (to C))
   (path (from B) (to D))
   (path (from D) (to E))
   (path (from E) (to F)))

(defrule MAIN::infer-indirect-paths
   (path (from ?begin) (to ?temp))
   (path (from ?temp) (to ?end))
   =>
   (assert (path (from ?begin) (to ?end))))

(defrule MAIN::print-all-paths
   (path (from ?begin) (to ?end))
   =>
   (printout t "there is a path from " ?begin " to " ?end crlf))

