(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (last-pair a-list)
  (list-ref a-list (- (length a-list) 1)))

