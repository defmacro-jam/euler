;;;; Problem 1

(defun problem-001 ()
  "Returns the sum of multiples of 3 and 5 that are less than 1000"
  (- (+ (sum-of-integers-below 1000 
                               :that-are-multiples-of 3)
        (sum-of-integers-below 1000 
                               :that-are-multiples-of 5))
     (sum-of-integers-below 1000 
                            :that-are-multiples-of 15)))



(defun sum-of-integers-below (limit &key (that-are-multiples-of 1))
  "Returns the sum of multiples below limit."
  (let ((mult that-are-multiples-of))
    (assert (and (integerp limit)
                 (integerp mult))
            (limit mult))
    (* mult
       (/ (* (floor (1- limit)
                    mult)
             (1+ (floor (1- limit)
                        mult)))
          2))))


;; (PROBLEM-001)
;; took  8 microseconds (0.000008 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      10 microseconds (0.000010 seconds) were spent in user mode
;;       6 microseconds (0.000006 seconds) were spent in system mode
