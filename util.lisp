
(defun primep (n)
  "Returns true for prime numbers, otherwise nil."
  (assert (integerp n)
          (n))
  (cond ((< n 2) nil)
        ((= n 2) t)
        ((evenp n) nil)
        (t
         (loop for i from 3 upto (sqrt n) by 2
            never (zerop (mod n i))))))


(defun prime-numbers-upto (limit)
  "Returns prime numbers less than or equal to limit."
  (assert (integerp limit)
          (limit))
  (remove-if #'zerop
             (loop for i from 1 upto limit
                collecting (if (primep i)
                               i
                               0))))


(defun prime-factors (num)
  "Returns prime factors of number."
  (assert (integerp num)
          (num))
  (remove-if #'zerop
             (loop for p in (prime-numbers-upto num)
                collecting (if (zerop (mod num p))
                               p
                               0))))
