(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

;;a.
(define (left-branch binary)
  (car binary))

(define (right-branch binary)
  (cadr binary))

(define (branch-length node)
  (car node))

(define (branch-structure node)
  (cadr node))

;;b.
(define (total-weight tree)
  (+ (branch-weight (left-branch tree))
     (branch-weight (right-branch tree))))

(define (branch-weight node)
  (if (pair? (branch-structure node))
      (total-weight (branch-structure node))
      (branch-structure node)))

;;c.
(define (balance? binary)
  (= (branch-moment (left-branch binary))
     (branch-moment (right-branch binary))))

(define (branch-moment branch)
  (* (branch-length branch)
     (branch-weight branch)))

;;d.
;;只需要更改:
(define (right-branch binary)
  (cdr binary))

(define (branch-structure node)
  (cdr node))
