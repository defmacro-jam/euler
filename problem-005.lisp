
;;;; Problem 5

(load #p"/Users/michael/src/euler/util.lisp")

;; Finding least common multiples by prime factorization, based on
;; description at http://en.wikipedia.org/wiki/Least_common_multiple

(defun smallest-multiple (limit)
  "Returns least common multiple of limit"
  (let* ((primes (prime-numbers-upto limit))
         (prime-powers (loop for prime in primes
                          collecting (cons prime prime))))
    (loop for i from 2 upto limit
       do (let ((pfactors (prime-factors i)))
            (when (= 1 (length pfactors))
              (loop for power from 1 upto 4
                 do (when (= i
                             (expt (car pfactors)
                                   power))
                      (setf prime-powers (acons (car pfactors)
                                                i
                                                prime-powers)))))))
    (reduce #'* (loop for prime in primes
                   collecting (cdr (assoc prime 
                                          prime-powers))))))

;; took 66 microseconds (0.000066 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;      67 microseconds (0.000067 seconds) were spent in user mode
;;       6 microseconds (0.000006 seconds) were spent in system mode
;;  11,296 bytes of memory allocated.
