(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

;;;;;;;;;
   (car (cons 2 3))
=> ((cons 2 3) (lambda (p q) p))
=> ((lambda (p q) p) 2 3)
=> 2
