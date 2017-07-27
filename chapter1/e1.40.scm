(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))
(define dx 0.00001)

(define (newton-method cubic guess)
  (fixed-point (newton-transformed cubic) guess))

(define (newton-transformed cubic)
  (lambda (x)
    (- x (/ (cubic x) ((deriv cubic) x)))))

(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a (square x)) (* b x) c)))

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

=> (newton-method (cubic 3 2 1) 1.0)
;;Value: -2.3247179572447267
