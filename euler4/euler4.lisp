;; Project Euler Problem 3
;; Author: John Carlyle
;; Date: 

(defun palp (x)
  (equal x (reverse x)))

(defun euler4 (&optional (digits 3))
  (let* ((min (* 10 digits))
	 (max (- (* min 10) 1)))
    
  
