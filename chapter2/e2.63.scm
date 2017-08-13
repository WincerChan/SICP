(define (tree->list-1 tree)
  (if (null? tree)
      '()
      (append (tree->list-1 (left-branch tree))
              (cons (entry tree)
                    (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result-list
        (copy-to-list (left-branch tree)
                      (cons (entry tree)
                            (copy-to-list (right-branch tree)
                                          result-list)))))
  (copy-to-list tree '()))

(define (entry tree) (car tree))

(define (left-branch tree) (cadr tree))

(define (right-branch tree) (caddr tree))

(define (make-tree entry left right)
  (list entry left right))

(define tree1 (make-tree 7 '(3 (1 () ()) (5 () ())) '(9 () (11 () ()))))
(define tree2 (make-tree 3 '(1 () ()) '(7 (5 () ()) (9 () (11 () ())))))
(define tree3 (make-tree 5 '(3 (1 () ()) ()) '(9 (7 () ()) (11 () ()))))
;; a).
;; 同样结果，都产生(1 3 5 7 9 11)

;; b).
;; 显然tree-list-2增长的慢一些
