;; Project Euler 10
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

(defun euler10 (&optional (limit 2000000))
  (reduce #'+ (sundaram-sieve limit)))
    

