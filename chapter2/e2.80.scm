;; 常规数
(define (install-scheme-number-package)
  (put '=zero? 'scheme-number
       (lambda (x)
         (= x 0)))
  'done)

;; 有理数
(define (install-rational-number-package)
  (put 'equ? 'rational
       (lambda (x)
         (= (numer x) 0)))
  'done)

;; 复数
(define (install-rational-number-package)
  (put 'equ? 'rational
       (lambda (x)
         (and (= (real-part x) 0)
              (= (imag-part x) 0)))))
