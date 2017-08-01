(define (make n d)
  (if (< (* n d) 0) (cons (- 0 (abs n)) (abs d))
      (cons (abs n) (abs d))))
