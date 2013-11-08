
(defun palp (candidate)
  (progn
    (print candidate)
    (if (or (zerop (length candidate))
	    (= 1 (length candidate)))
	t
      (if (eq (subseq candidate 0 1) (subseq candidate (- (length candidate) 1) (length candidate)))
	  (palp (subseq (rest candidate) 0 (length candidate)))
	nil))))

(defun euler4 ()


)
