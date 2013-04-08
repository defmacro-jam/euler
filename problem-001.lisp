
;;;; O(1) approach, based on
;;;; http://betterexplained.com/articles/techniques-for-adding-the-numbers-1-to-100/

(defun sum-of-multiples-below (multiple limit)
  (* multiple
     (/ (* (floor (1- limit)
                  multiple)
           (1+ (floor (1- limit)
                      multiple)))
        2)))

(- (+ (sum-of-multiples-below 3 1000)
      (sum-of-multiples-below 5 1000))
   (sum-of-multiples-below 15 1000))

;; took 10 microseconds (0.000010 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;      10 microseconds (0.000010 seconds) were spent in user mode
;;       7 microseconds (0.000007 seconds) were spent in system mode

