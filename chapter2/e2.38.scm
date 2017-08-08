(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

1 (user) => (fold-right / 1 (list 1 2 3))

;;Value: 3/2

1 (user) => (fold-left / 1 (list 1 2 3))

;;Value: 1/6

1 (user) => (fold-left list '() (list 1 2 3))

;;Value 56: (((() 1) 2) 3)

1 (user) => (fold-right list '() (list 1 2 3))

;;Value 57: (1 (2 (3 ())))

;; 要fold-right和fold-left得出相同结果，只需要op满足交换率即可，即：
;; A op B = B op A
