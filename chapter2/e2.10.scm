(define (div-interval x y)
  (if (and (< 0 (upper-bound y)) (> 0 (lower-bound y)))
      (display "error")
      (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))))))
