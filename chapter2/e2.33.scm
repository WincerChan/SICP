(define (accumulate op initial seqence)
  (if (null? seqence)
      initial
      (op (car seqence)
          (accumulate op initial (cdr seqence)))))

(define (map p seqence)
  (accumulate (lambda (x y) (cons (square x) y)) '() seqence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length seqence)
  (accumulate (lambda (x y) (+ 1 y)) 0 seqence))
