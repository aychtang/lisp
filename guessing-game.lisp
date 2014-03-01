(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number()
    (ash (+ *small* *big*) -1)
)

(defun smaller()
    (setf *big* (1- (guess-my-number)))
    (guess-my-number)
)

(print(guess-my-number))
(print(smaller))
