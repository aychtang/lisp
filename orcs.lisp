; Orc Battle! Example from LoL.

(defparameter *health* nil)
(defparameter *agility* nil)
(defparameter *strength* nil)

(defparameter *monsters* nil)
(defparameter *monster-makers* nil)
(defparameter *monster-amount* 12)

(defun init-player ()
	(setf health 30)
	(setf agility 30)
	(setf strength 30))

(defun player-dead ()
	(<= *health* 0))

(defun orc-battle ()
	(init-monsters)
	(init-player)
	(game-loop)
	(when (player-dead)
		(princ "Game over..."))
	(when (monsters-dead)
		(princ "You have defeated your enemies in combat...")))
