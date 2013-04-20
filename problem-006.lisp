;;;; Problem 6


(defun problem-006 ()
  (sum-square-difference 100))


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


(defun square (x)
  "Returns the square of x."
  (* x x))


;; (PROBLEM-006)
;; took 15 microseconds (0.000015 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      15 microseconds (0.000015 seconds) were spent in user mode
;;       4 microseconds (0.000004 seconds) were spent in system mode
;;  3,216 bytes of memory allocated.
