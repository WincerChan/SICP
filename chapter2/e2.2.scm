(define (start-segment n d)
  (cons n d))
(define (end-segment n d)
  (cons n d))
(define (make-segment start end) (cons start end))
(define a-segment (make-segment (start-segment 1 2) (end-segment 4 3)))

(define (midpoint-segment a-segment)
  (define (average a b)
    (/ (+ a b) 2))
  (cons (average (car (car a-segment)) (car (cdr a-segment)))
        (average (cdr (car a-segment)) (cdr (cdr a-segment)))))

(display (midpoint-segment a-segment))

