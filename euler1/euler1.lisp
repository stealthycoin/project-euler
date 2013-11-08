;; Project Euler Problem 1
;; Author: John Carlyle
;; Date: 1/27/12

(defun euler1 (&optional (limit 1000))
  (let ((s 0))
    (dotimes (i limit)
      (when (or
	     (zerop (mod i 3))
	     (zerop (mod i 5)))
	(setf s (+ s i)))) s))
