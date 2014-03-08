(defparameter *nodes* '(
	(living-room (you are in the living room.))
	(garden (you are in a garden.))
	(attic (you are in the attic))))

(defparameter *edges* '(
	(living-room
		(garden west door)
		(attic upstairs ladder))
	(garden (living-room east door))
	(attic (living-room down ladder))))

(defun describe-room (room nodes)
	(cadr (assoc room nodes)))

(defun describe-path (edge)
	`(there is a,(caddr edge) going,(cadr edge) from here.))

(defun describe-paths (location edges)
	(apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

(print (describe-room `living-room *nodes*))
(print (describe-paths 'living-room *edges*))
