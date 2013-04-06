
;;;; A naive O(n) approach returns 233168:

(reduce #'+
        (loop for i from 1 upto 999
           collecting (if (or
                           (zerop (mod i 5))
                           (zerop (mod i 3)))
                          i
                          0)))

;; took 210 microseconds (0.000210 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;     211 microseconds (0.000211 seconds) were spent in user mode
;;       8 microseconds (0.000008 seconds) were spent in system mode
;;  16,000 bytes of memory allocated.



;;;; A better O(1) approach, based on
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

