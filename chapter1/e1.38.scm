(define (iter-frac n d k)
  (define (frac-iter i result)
    (if (= i 1)
        result
        (frac-iter (- i 1) (/ (n (- i 1)) (+ (d (- i 1)) result)))))
  (frac-iter k (/ (n k) (d k))))

(define (n k)
  1)
(define (d k)
  (if (= (remainder k 3) 2)
      (* 2 (quotient (+ k 1) 3))
      1))
