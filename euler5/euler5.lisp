;; Project Euler Problem 5
;; Name: John Carlyle
;; Date: 

(defun primep (x)
  (let ((sqrt-x (sqrt x)))
    (do ((i 2 (1+ i)))
        ((> i sqrt-x) t)
      (when (eq (mod x i) 0)
	(return nil)))))

(defun euler5 (&optional (limit 20))
  (apply '* (loop for i from 1 to limit collect i)))
