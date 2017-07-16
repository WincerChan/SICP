```scheme
(define (check-prime n)
  (if (= n 2) #t
      (Miller-test 2 n)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        ((= (remainder (square base) m) 1)0)
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (Miller-test a n)
  (cond ((= a (- n 2)) #t)
        ((= (expmod a (- n 1) n) 1)
         (Miller-test (+ a 1) n))
        (else #f)))

(define (even? n)
  (= (remainder n 2) 0))
```
