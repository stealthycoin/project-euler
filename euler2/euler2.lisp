;; Project Euler 2
;; Author: John Carlyle
;; Date: 11/7/2013

(defun nextfib (a b)
  (+ a b))

(defun summation (max_val a b &optional (sum 0))
  (cond 
   ((> b max_val) sum)
   (t (summation max_val 
		 b 
		 (nextfib a b) 
		 (if (evenp b)
		     (+ sum b)
		   sum)))))
		
(defun euler2 (&optional (limit 4000000)) 
  (summation limit 1 1))


