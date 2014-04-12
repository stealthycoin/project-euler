;; Project Euler 46
;; Author: John Carlyle
;; Date: 4/11/2014

(defun sundaram-sieve (limit)
  (let ((numbers (coerce (cons 2 (loop for i from 3 to limit by 2 collect i)) 'vector))
	(half (/ limit 2))
        (start 4))
    (loop for step from 3 upto limit by 2 do
          (loop for i from start below half by step do
                (setf (aref numbers i) 0))
          (incf start (* 2 (1+ step)))
          (when (> start half)
            (return (remove 0 numbers))))))

(defun prime? (n)
  (loop with s = (floor (sqrt n))
	for i from 2 to s 
	never (zerop (mod n i))))

(defun check (n)
  (loop for p across (sundaram-sieve n)
	for i = (sqrt (/ (- n p) 2))
	never (= i (floor i))))

(defun euler46 ()
  (loop for n from 9 by 2
	if (and (not (prime? n)) (check n)) 
	do (return n)))
  
