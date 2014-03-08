(defparameter *nodes* '(
			(living-room (you are in the living room.))
			(garden (you are in a garden.))
			(attic (you are in the attic))))

(defun describe (room nodes)
	(cadr (assoc location nodes)))

(print (describe `living-room *nodes*))
