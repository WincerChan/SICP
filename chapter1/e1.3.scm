(define (sum-of-big a b c)
  (- (+ a b c)
     (if (< b (if (< a c) a c)) b (if (< a c) a c))))
