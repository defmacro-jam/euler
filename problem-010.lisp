;;;; Problem 10

(defun sum-primes-upto (limit)
  "Returns the sum of all prime numbers up to limit."
  (reduce #'+
          (prime-numbers-upto limit)))

;; took 7,731,223 microseconds (7.731223 seconds) to run.
;;        356,405 microseconds (0.356405 seconds, 4.61%) of which was spent in GC.
;; During that period, and with 2 available CPU cores,
;;      7,519,409 microseconds (7.519409 seconds) were spent in user mode
;;         34,533 microseconds (0.034533 seconds) were spent in system mode
;;  66,360,320 bytes of memory allocated.
;;  2,048 minor page faults, 0 major page faults, 0 swaps.
