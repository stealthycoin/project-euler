;; Project Euler Problem 7
;; Author: John Carlyle
;; Date: 11/9/13

(defun primep (candidate primes)
  (cond 
   ((zerop (length primes)) t)
   ((> (first primes) (sqrt candidate)) t)
   ((zerop (mod candidate (first primes))) nil)
   (t (primep candidate (rest primes)))))

(defun sieve (limit candidate primes)
  (if (= limit (length primes))
      primes
    (sieve limit 
	   (+ 2 candidate) 
	   (if (primep candidate (reverse primes))
	       (cons candidate primes)
	     primes))))

(defun euler7 (&optional (limit 10001))
  (let ((prime-seeds '(5 3 2)))
    (first (sieve limit 7 prime-seeds))))
    
	
