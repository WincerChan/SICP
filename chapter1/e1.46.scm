(define (iterative-improve good-enough? improve)
  (lambda (x)
     (if (good-enough? x (improve x))
         x
         ((iterative-improve good-enough? improve) (improve x)))))

(define (good-enough? x1 x2)
  (< (abs (- x1 x2)) 0.00001))

;; a).rewriting sqrt-iter method
(define (sqrt-iter guess x)
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  ((iterative-improve good-enough? improve) guess))

;; b).rewriting fixed-point method
(define (fixed-point f first-guess)
  (define (improve guess)
    (f guess))
  ((iterative-improve good-enough? improve) first-guess))
