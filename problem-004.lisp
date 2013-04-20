;;;; Problem 4


(defun problem-004 ()
  (largest-palindrome-product-between 900
                                      :and 999))


(defun largest-palindrome-product-between (lower-bound &key (and 0))
  "Returns the largest palindrome made from the product of two numbers."
  (let ((answer 0)
        (upper-bound and))
    (assert (and (integerp lower-bound)
               (integerp upper-bound)
               (< lower-bound upper-bound))
          (lower-bound upper-bound))
    (loop for i from upper-bound downto lower-bound
       do (loop for j from upper-bound downto lower-bound
             do (when (and (> (* i j)
                              answer)
                           (palindromep (* i j)))
                  (setf answer (* i j)))))
    answer))


(defun palindromep (n)
  "Returns true if printed representation of argument
is a palindrome, otherwise nil."
  (let ((as-string (format nil "~a" n)))
    (string= as-string
             (reverse as-string))))


;; (PROBLEM-004)
;; took 19,321 microseconds (0.019321 seconds) to run.
;;       1,145 microseconds (0.001145 seconds, 5.93%) of which was spent in GC.
;; During that period, and with 8 available CPU cores,
;;      17,809 microseconds (0.017809 seconds) were spent in user mode
;;         636 microseconds (0.000636 seconds) were spent in system mode
;;  1,645,328 bytes of memory allocated.
