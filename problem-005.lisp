;;;; Problem 5


(defun problem-005 ()
  (smallest-multiple-of-integers-upto 20))


(defun smallest-multiple-of-integers-upto (limit)
  "Returns smallest positive number that is evenly divisible by all of the numbers from 1 to to limit."
  (assert (integerp limit)
          (limit))
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


;; (PROBLEM-005)
;; took 41 microseconds (0.000041 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      41 microseconds (0.000041 seconds) were spent in user mode
;;       4 microseconds (0.000004 seconds) were spent in system mode
;;  11,296 bytes of memory allocated.
