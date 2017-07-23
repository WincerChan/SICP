```scheme
(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))))

(define (even? b)
  (= (remainder b 2) 0))

(define (halve b)
  (/ b 2))

(define (double x)
  (* x 2))
```

 
