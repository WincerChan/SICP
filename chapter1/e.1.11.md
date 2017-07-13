递归计算过程：
```lisp
(define (f num)
  (cond ((< num 3) num)
  (else (+ (f (- num 1))
           (* 2 (f (- num 2)))
           (* 3 (f ( - num 3)))))))
```

迭代计算过程：
```lisp
(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (cond ((= count 0) c)
        ((= count 1) b)
        ((= count 2) a)
        (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
```

