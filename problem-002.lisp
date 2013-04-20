;;;; Problem 2


(defun problem-002 ()
  (sum-of-even-fibonaccis-upto 4000000))


(defun sum-of-even-fibonaccis-upto (limit)
  "Returns the sum of the even-valued fibonacci numbers
less than or equal to limit."
  (assert (integerp limit)
          (limit))
  (loop for fib-n-minus2 = 0 then fib-n-minus1
     and fib-n-minus1 = 1 then (+ fib-n-minus2 fib-n-minus1)
     while (< fib-n-minus1 limit)
     summing (if (evenp fib-n-minus1)
                 fib-n-minus1
                 0)))

;; (PROBLEM-002)
;; took 6 microseconds (0.000006 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      8 microseconds (0.000008 seconds) were spent in user mode
;;      5 microseconds (0.000005 seconds) were spent in system mode
