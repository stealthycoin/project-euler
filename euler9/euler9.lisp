;; Project Euler 9
;; Author: John Carlyle
;; Date: 4/11/2013

;; Euclid's Formula

;;Calculate the product given m and n
(defun product (m n)
  (let ((ms (* m m))
	(ns (* n n)))
    (*
     (- ms ns)
     (* 2 m n)
     (+ ms ns))))
	    

;;Calculate sum given m and n
(defun sum (m n) 
  (let ((ms (* m m))
	(ns (* n n)))
    (+ 
     (- ms ns)
     (* 2 m n)
     (+ ms ns))))

;;Euclids Formula requires that m > n
(defun euler9 (&optional (target 1000))
  (let ((m 2)
	(n 1))
    (loop 
     (if (= (sum m n) target)
	 (return (product m n))
       (progn
	 (setf n (1+ n))
	 (setf m (if (= m n)
		     (progn 
		       (setf n 1)
		       (1+ m))
		   m)))))))
