 ```scheme
(define (even? n)
  (= (remainder n 2) 0))

(define (halve b)
  (/ b 2))

(define (double x)
  (* x 2))

(define (fast-mult a b)
  (fast-mult-iter a b 1))

(define (fast-mult-iter a counter product)
  (cond ((= counter 0) 0)
        ((even? counter) (double (fast-mult-iter a (halve counter) (+ product a))))
        (else (+ a (fast-mult-iter a (- counter 1) (+ product a))))))
 ```

