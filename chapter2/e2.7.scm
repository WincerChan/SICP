(define (lower-bound x)
  (min (car x)
       (cdr x)))

(define (upper-bound x)
  (max (car x)
       (cdr x)))
