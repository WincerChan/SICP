;; （m，n）表示第m行n列的数字在帕斯卡三角的位置。
(define (pascal m n)
  (cond ((= n 1) 1)
        ((= n m) 1)
        (else (+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n)))))

