
;;;; Straight-forward iterative accumulation of fibonacci numbers,
;;;; summing evens.  Returns 4613732

(loop for fib-n-minus2 = 0 then fib-n-minus1
   and fib-n-minus1 = 1 then (+ fib-n-minus2 fib-n-minus1)
   while (< fib-n-minus1 4000000)
   summing (if (evenp fib-n-minus1)
               fib-n-minus1
               0))

;; took 8 microseconds (0.000008 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;      8 microseconds (0.000008 seconds) were spent in user mode
;;      9 microseconds (0.000009 seconds) were spent in system mode
