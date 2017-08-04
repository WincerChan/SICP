(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

(define A (make-center-percent 2 0.02))

(define B (make-center-percent 3 0.01))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

;;;;;;;; Test Example
=> (par1 A B)

;;Value 46: (1.1481656804733726 . 1.2537931034482759)

=> (par2 A B)

;;Value 47: (1.180770791075051 . 1.219171597633136)

=> (par2 A A)

;;Value 48: (.98 . 1.02)

=> (par1 A A)

;;Value 49: (.9415686274509802 . 1.0616326530612246)
