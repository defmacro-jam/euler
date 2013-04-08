
;;;; Problem 007

(load #p"/Users/michael/src/euler/util.lisp")

;; State-of-the-art seems to be the Sieve of Atkin, but brute force, I
;; think, is fine here.

(defun ten-thousand-first-prime ()
  "Returns the 10,001st prime number."
  (nth 10000
       (remove-if #'zerop 
                  (loop for i upto 105000
                     collecting (if (primep i)
                                    i
                                    0)))))

;; took 156,250 microseconds (0.156250 seconds) to run.
;;       12,632 microseconds (0.012632 seconds, 8.08%) of which was spent in GC.
;; During that period, and with 2 available CPU cores,
;;      150,998 microseconds (0.150998 seconds) were spent in user mode
;;        1,240 microseconds (0.001240 seconds) were spent in system mode
;;  3,515,232 bytes of memory allocated.
