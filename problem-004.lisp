
(defun palindromep (n)
  "Palindrome predicate."
  (let ((as-string (format nil "~a" n)))
    (string= as-string
             (reverse as-string))))


;;;; When in doubt, use brute force
;;;;                                --Uncle Ken

(defun largest-palindrome-product ()
  "Returns the largest palindrome made from the product of two 3-digit numbers."
  (let ((answer 0))
  (loop for i from 999 downto 800
     do (loop for j from 999 downto 800
           do (when (and (> (* i j)
                            answer)
                         (palindromep (* i j)))
                (setf answer (* i j)))))
  answer))

(largest-palindrome-product)


;; took 46,703 microseconds (0.046703 seconds) to run.
;;       2,903 microseconds (0.002903 seconds, 6.22%) of which was spent in GC.
;; During that period, and with 8 available CPU cores,
;;      46,049 microseconds (0.046049 seconds) were spent in user mode
;;         517 microseconds (0.000517 seconds) were spent in system mode
;;  1,054,768 bytes of memory allocated.
;;  32 minor page faults, 0 major page faults, 0 swaps.

