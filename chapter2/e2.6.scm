(define zero (lambda (f)
               (lambda (x)
                 x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

;; one == (add-1 zero)
(add-1 zero)
=> (lambda (f)
     (lambda (x)
       (f ((zero f) x))))
;; ((zero f) x) 代入 zero
=> (lambda (f)
     (lambda (x)
       (f x)))

;; two == (add-1 one)
(add-1 one)
=> (lambda (f)
     (lambda (x)
       (f ((one f) x))))
;; ((one f) x) 代入 one
=> (lambda (f)
     (lambda (x)
       (f(f x))))

;; emmmm，应该可以看出规律了，就是不断的f操作，达到加法的目的
(define (add m n)
  (lambda (f)
    (lambda (x)
      ((m f) ((n f) x)))))
