(define x (list 1 2 4))

(define y (list 4 5 6))

1 (user) => (append x y)

;;Value 63: (1 2 4 4 5 6)

1 (user) => (cons x y)

;;Value 64: ((1 2 4) 4 5 6)

1 (user) => (list x y)

;;Value 65: ((1 2 4) (4 5 6))
