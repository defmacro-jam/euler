;;;; Problem 3


(defun problem-003 ()
  (largest-prime-factor 600851475143))


(defun largest-prime-factor (n)
  "Returns the largest prime factor of n."
  (assert (integerp n)
          (n))
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

;; (PROBLEM-003)
;; took 4,250 microseconds (0.004250 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      4,135 microseconds (0.004135 seconds) were spent in user mode
;;         34 microseconds (0.000034 seconds) were spent in system mode
;;  108,448 bytes of memory allocated.
;; 6857
