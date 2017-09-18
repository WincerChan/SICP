(define (raise x) (apply-generic 'raise x))

;; 整数
(put 'raise 'integer
     (lambda (n) (make-rational n 1)))

;; 有理数
(put 'raise 'rational
     (lambda (r) (make-real (/ (numer r) (denom r)))))

;; 实数
(put 'raise 'real
     (lambda (r) (make-complex-from-real-imag r 0)))
