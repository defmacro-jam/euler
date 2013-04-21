;;;; Problem #9 #9 #9


(defun problem-009 ()
  (reduce #'*
          (pythagorean-triplet 1000)))


(defun pythagorean-triplet (sum)
  (let ((answer nil))
    (loop for a from 1 upto (/ sum 3)
     do (loop for b from 1 upto (/ sum 2)
             do (let ((c (- sum a b)))
                  (when
                      (= (square c)
                         (+ (square a)
                            (square b)))
                    (setf answer
                          (list a b c))))))
    answer))


;; (PROBLEM-009)
;; took 3,808 microseconds (0.003808 seconds) to run.
;; During that period, and with 8 available CPU cores,
;;      3,795 microseconds (0.003795 seconds) were spent in user mode
;;         19 microseconds (0.000019 seconds) were spent in system mode
;;  80 bytes of memory allocated.
