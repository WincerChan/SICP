(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (xcor-vect a-frame)
  (cadr a-frame))

(define (chosen-origin a-frame)
  (car a-frame))

(define (ycor-vect a-frame)
  (cadr (cdr x)))

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

(define (xcor-vect a-frame)
  (cadr a-frame))

(define (ycor-vect a-frame)
  (cdr (cdr a-frame)))

(define (chosen-origin a-frame)
  (cadr a-frame))
