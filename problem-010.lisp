;;;; Problem 10


(defun problem-010 ()
  (sum-primes-below 2000000))


(defun sum-primes-below (limit)
  "Returns the sum of all prime numbers below limit."
  (reduce #'+
          (prime-numbers-upto (1+ limit))))


;; (PROBLEM-010)
;; took 4,315,843 microseconds (4.315843 seconds) to run.
;;        187,212 microseconds (0.187212 seconds, 4.34%) of which was spent in GC.
;; During that period, and with 8 available CPU cores,
;;      4,239,504 microseconds (4.239504 seconds) were spent in user mode
;;         29,511 microseconds (0.029511 seconds) were spent in system mode
;;  66,360,368 bytes of memory allocated.
;;  7,123 minor page faults, 0 major page faults, 0 swaps.
