;; Project Euler Problem 5
;; Name: John Carlyle
;; Date: 12/18/2013

(defun p? (list value) 
  (if (zerop (length list))
      t
    (if (equal (mod value 
		    (first list)) 
	       0)
	(p? (cdr list) value)
      nil)))
	

(defun search-for-p-aux (list candidate)
  (if (p? list candidate)
      candidate
    (search-for-p-aux list (1+ candidate))))

(defun search-for-p (list)
  (search-for-p-aux list 
		    (first (last list))))
  	
(defun euler5 (&optional (limit 20))
  (search-for-p (loop for i from 1 to limit collect i)))

