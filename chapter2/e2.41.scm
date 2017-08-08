;; (define (sum-ternary n))

(define (unique-ternary n)
  (flatmap
   (lambda (i)
     (flatmap (lambda (j)
                (map (lambda (k) (list i j k))
                     (enumerate-interval 1 (- j 1))))
              (enumerate-interval 1 (- i 1))))
   (enumerate-interval 1 n)))

(define (sum-triple s)
  (+ (car s) (cadr s) (cadr (cdr s))))

(define (sum-triple-unique n s)
  (filter (lambda (x) (= s (sum-triple x))) (unique-ternary n)))
