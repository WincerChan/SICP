1 (user) => (list 'a 'b 'c)

;;Value 42: (a b c)

1 (user) => (list (list 'george))

;;Value 43: ((george))

1 (user) => (cdr '((x1 x2) (y1 y2)))

;;Value 44: ((y1 y2))

1 (user) => (cadr '((x1 x2) (y1 y2)))

;;Value 45: (y1 y2)

1 (user) => (pair? (car '(a short list)))

;;Value: #f

1 (user) => (memq 'red '((red shoes) (blue socks)))

;;Value: #f

1 (user) => (memq 'red '(red shoes blue socks))

;;Value 46: (red shoes blue socks)
