;; Project Euler Problem 4
;; Author: John Carlyle
;; Date: 11/29/2013

(defun palp (x)
  (equal x (reverse x)))

(defun euler4 (&optional (digits 3))
  (let* ((min (expt 10 (- digits 1)))
	 (max (- (* min 10) 1))
	 (largest 0))
    (loop for i  from min to max do 
	  (loop for j from min to max do
		(let ((candidate (* i j)))
		  (setf largest 
			(if (palp (write-to-string candidate))
			    (max candidate largest)
			  largest)))))
    largest))
