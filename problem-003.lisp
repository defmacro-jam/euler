;;;; Problem 3

(defun primep (n)
  "Prime number predicate."
  (cond ((< n 2) nil)
        ((= n 2) t)
        ((zerop (mod n 2)) nil)
        (t
         (loop for i from 3 upto (sqrt n) by 2
            never (zerop (mod n i))))))


(defun largest-prime-factor (n)
  "Returns the largest prime factor of n."
  (let ((factor 2)
        (num n))
    (if (primep num)
      num
      (loop until (= num factor)
         do (progn
              (loop while (and (zerop (mod num factor))
                            (not (= num factor)))
                 do (setf num (/ num factor)))
              (unless (= num factor)
                (progn
                  (incf factor)
                  (loop until (primep factor)
                       do (incf factor)))))))
    factor))

;; took 5,937 microseconds (0.005937 seconds) to run.
;; During that period, and with 2 available CPU cores,
;;      5,604 microseconds (0.005604 seconds) were spent in user mode
;;         30 microseconds (0.000030 seconds) were spent in system mode
;;  108,448 bytes of memory allocated.

