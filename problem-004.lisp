
(defun palindromep (n)
  "Palindrome predicate."
  (let ((as-string (format nil "~a" n)))
    (string= as-string
             (reverse as-string))))


;;;; When in doubt, use brute force
;;;;                                --Uncle Ken

(defun largest-palindrome-product (limit)
  "Returns the largest palindrome made from the product of two 3-digit numbers."
  (let ((answer 0))
  (loop for i upto limit
     do (loop for j upto limit
           do (when (and (palindromep (* i j))
                         (> (* i j)
                            answer))
                (setf answer (* i j)))))
  answer))

(largest-palindrome-product 999)

;; took 5,657,818 microseconds (5.657818 seconds) to run.
;;        348,404 microseconds (0.348404 seconds, 6.16%) of which was spent in GC.
;; During that period, and with 2 available CPU cores,
;;      5,004,903 microseconds (5.004903 seconds) were spent in user mode
;;        108,131 microseconds (0.108131 seconds) were spent in system mode
;;  367,920,896 bytes of memory allocated.


