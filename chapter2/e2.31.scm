(define (square-tree tree) (tree-map square tree))

(define (tree-map square tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map square sub-tree)
             (square sub-tree)))
       tree))

(define (tree-map square tree)
  (cond ((null? x) '())
        ((not (pair? x)) (square x))
        (else (cons (tree-mao square (car x))
                    (tree-map square (cdr x))))))
