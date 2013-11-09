;; Project Euler Problem 6
;; Author: John Carlyle
;; Date: 11/9/13

(defun sum-of-squares (limit &optional (a 0))
  (if (zerop limit)
      a
    (sum-of-squares (- limit 1) (+ a (* limit limit)))))

(defun square-of-sum (limit &optional (a 0))
  (if (zerop limit)
      (* a a)
    (square-of-sum (- limit 1) (+ a limit))))

(defun euler6 (&optional (limit 100))
  (- (square-of-sum limit) (sum-of-squares limit)))
