(define (make-vect x y)
  (cons x y))

(define (xcor-vect a-vect)
  (car a-vect))

(define (ycor-vect a-vect)
  (cdr a-vect))

(define (add-vect vect1 vect2)
  (cons (+ (xcor-vect vect1) (xcor-vect vect2))
        (+ (ycor-vect vect1) (ycor-vect vect2))))

(define (sub-vect vect1 vect2)
  (cons (- (xcor-vect vect1) (xcor-vect vect2))
        (- (ycor-vect vect1) (ycor-vect vect2))))

(define (scale-vect s a-vect)
  (cons (* s (xcor-vect a-vect))
        (* s (ycor-vect a-vect))))
