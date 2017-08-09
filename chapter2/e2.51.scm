;;1.
(define (below painter1 painter2)
  (let ((split-point (make-vect 0 0.5)))
    (let ((painter-top
           (transform-painter painter2
                              split-point
                              (make-vect 1.0 0.5)
                              (make-vect 0 1.0)))
          (painter-buttom
           (transform-painter painter1
                              (make-vect 0 0)
                              (make-vect 1.0 0)
                              split-point))))
    (lambda (frame)
      (painter-top frame)
      (painter-buttom frame))))


;;2.
(define (below painter1 painter2)
  (rotate270 (beside painter2 painter1)))
