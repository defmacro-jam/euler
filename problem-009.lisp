
;;;; Problem #9 #9 #9

;; brute force and slower'dn molasses in january
(let ((answer 0))
           (loop for a upto 999
              do (loop for b upto 999
                      do (loop for c upto 999
                              do (when
                                    (and 
                                     (< (expt a 2)  
                                        (expt b 2)
                                        (expt c 2))
                                     (= (+ (expt a 2)
                                           (expt b 2))
                                        (expt c 2))
                                     (= (+ a b c)
                                        1000))
                                   (setf answer (* a b c))))))
           answer)

;; (200  375 425)
