(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f
               (repeated f (- n 1)))))
(define (compose f g)
  (lambda (x) (f (g x))))

(define (get-num n)
  (define (iter p r)
    (if (< (- n r) 0)
        (- p 1)
        (iter (+ p 1) (* r 2))))
  (iter 1 2))

(define tolerance 0.0001)
(define (average x y)
  (/ (+ x y) 2.0))

(define (average-damp f)
  (lambda (x) (average x (f x))))
(define (pow b p)
  (define (even? x)
    (= (remainder x 2) 0))
  (define (iter res a n)
    (if (= n 0)
        res
        (if (even? n)
            (iter res (square a) (/ n 2))
            (iter (* res a) a (- n 1)))))
  (iter 1 b p))

(define (nth-root n x)
  (fixed-point ((repeated average-damp (get-num n))
                (lambda (y) (/ x (pow y (- n 1)))))
               1.0))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))
