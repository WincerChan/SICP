(define (make-segment vect1 vect2)
  (cons vect1 vect2))

(define (start-segment a-segment)
  (car a-segment))

(define (end-segment a-segment)
  (cdr a-segment))

