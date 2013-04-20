;;;; Problem 007

;; State-of-the-art seems to be the Sieve of Atkin, but brute force, I
;; think, is fine here.

(defun problem-007 ()
  "Returns the 10,001st prime number."
  (nth 10000
       (remove-if #'zerop 
                  (loop for i upto 105000
                     collecting (if (primep i)
                                    i
                                    0)))))

;; (PROBLEM-007)
;; took 86,075 microseconds (0.086075 seconds) to run.
;;       2,280 microseconds (0.002280 seconds, 2.65%) of which was spent in GC.
;; During that period, and with 8 available CPU cores,
;;      83,179 microseconds (0.083179 seconds) were spent in user mode
;;       1,051 microseconds (0.001051 seconds) were spent in system mode
;;  3,515,232 bytes of memory allocated.
;;  23 minor page faults, 0 major page faults, 0 swaps.


