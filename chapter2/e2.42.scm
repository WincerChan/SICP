;; 此题不会，网上的答案
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (position) (safe? k position))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (adjoin-position row k position)
  (cons row position))

(define (safe? k position)
  (define board-size (length position))
  (define (safe-diagonal? position)
    (define (col-safe? new-row col position)
      (cond ((> col board-size) true)
            ((= (abs (- new-row (car position)))
                (abs (- col 1))) false)
            (else (col-safe? new-row (+ col 1) (cdr position)))))
    (col-safe? (car position) 2 (cdr position)))
  (define (safe-horizontal? position)
    (not (member (car position) (cdr position))))
  (or (= (length position) 1)
      (and (safe-horizontal? position)
           (safe-diagonal? position))))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (position) (safe? k position))
         (flatmap
          (lambda (new-row)
            (map (lambda (rest-of-queens)
                   (adjoin-position new-row k rest-of-queens))
                 (queen-cols (- k 1))))
          (enumerate-interval 1 board-size)))))
  (queen-cols board-size))
