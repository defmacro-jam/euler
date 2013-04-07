
(defun primep (n)
  "Prime number predicate."
  (cond ((< n 2) nil)
        ((= n 2) t)
        ((zerop (mod n 2)) nil)
        (t
         (loop for i from 3 upto (sqrt n) by 2
            never (zerop (mod n i))))))


(defun prime-numbers-upto (limit)
  "Returns prime numbers less than or equal to limit."
  (remove-if #'zerop
             (loop for i from 1 upto limit
                collecting (if (primep i)
                               i
                               0))))


(defun prime-factors (num)
  "Returns prime factors of num."
  (remove-if #'zerop
             (loop for p in (prime-numbers-upto num)
                collecting (if (zerop (mod num p))
                               p
                               0))))
