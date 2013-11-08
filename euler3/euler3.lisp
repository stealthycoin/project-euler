;; Project Euler Problem 3
;; Author: John Carlyle
;; Date: 11/8/2013


(defun prime-factors (value &optional (divisor 2) (factors '()))
  (cond 
   ((= (mod value divisor) 0)
    (prime-factors (/ value divisor) divisor (cons divisor factors)))
   ((= value 1) factors)
   (t 
    (prime-factors value (if (= divisor 2) 3 (+ divisor 2)) factors))))
  


(defun euler3 (&optional (limit 600851475143))
  (car (prime-factors limit)))
