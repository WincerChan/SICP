(define (tan-cf x k)
  (define (cf i)
    (/ (if (= i 1)
           x
           (square x))
       (- (- (* i 2) 1)
          (if (= i k)
              0
              (cf (+ i 1))))))
  (cf 1))
=> (tan-cf 4 10)
;Value: 763522100/659447581
