;; 常规数
(define (install-scheme-number-package)
  (put 'equ? '(scheme-number scheme-number)
       (lambda (x y)
         (= x y)))
  'done)

;; 有理数
(define (install-rational-number-package)
  (put 'equ? '(rational rational)
       (lambda (x y)
         (and (= (numer x) (numer y))
              (= (denom x) (denom y)))))
  'done)

;; 复数
(define (install-complex-number-package)
  (put 'equ? '(complex complex)
       (lambda (x y)
         (and (= (real-part x) (real-part y))
              (= (imag-part x) (real-part y))))))
