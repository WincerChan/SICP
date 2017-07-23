(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ;; ((= (remainder (square base) m) 1) 0)
        ((nontrivial-square-root? base m) 0)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (miller-rabin n)
  (miller-rabin-test (- n 1) n))

(define (miller-rabin-test a n)
  (cond ((= a 0) true)
        ((= (expmod a (- n 1) n) 1) (miller-rabin-test (- a 1) n))
        (else false)))

(define (nontrivial-square-root? a n)
  (and (not (= a 1))
       (not (= a (- n 1)))
       (= 1 (remainder (square a) n))))
