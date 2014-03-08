(defparameter *nodes* '(
	(living-room (you are in the living room.))
	(garden (you are in a garden.))
	(attic (you are in the attic))))

(defparameter *edges* '(
	(living-room (garden west door))
	(garden (living-room east door))
	(attic (living-room down ladder))))

(defun describe-room (room nodes)
	(cadr (assoc room nodes)))

(defun describe-path (edge)
	`(there is a,(caddr edge) going,(cadr edge) from here.))

(print (describe-room `living-room *nodes*))
(print (describe-path '(garden west door)))
