;; 迭代
(define (repeat-iter f n result)
  (if (= n 0)
      result
      (repeat-iter f (- n 1) (f result))))

;; 递归
(define (repeat-iter f n x)
  (if (= n 0)
      x
      (f (repeat-iter f (- n 1) x))))

(define (repeated f n)
  (lambda (x) (repeat-iter f n x)))
