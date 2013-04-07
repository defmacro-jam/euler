
;;;; Problem 6

(defun square (x)
  "Returns the square of x."
  (* x x))


(defun sum-square-difference (num)
  "Returns the difference of the square of the sum
of all the first num natural numbers, and the
sum of the squares of all the first num natural numbers."
  (let* ((number-list (loop for i from 1 upto num
                         collecting i))
         (sum-of-squares (reduce #'+
                                 (mapcar #'square
                                         number-list)))
         (square-of-sum (square (apply #'+
                                       number-list))))
    (- square-of-sum
       sum-of-squares)))

;; took 18 microseconds (0.000018 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;      18 microseconds (0.000018 seconds) were spent in user mode
;;       7 microseconds (0.000007 seconds) were spent in system mode
;;  3,216 bytes of memory allocated.
