(define (same-parity first . rest)
  (get-parity
   (if (odd? first)
       odd?
       even?)
   (append (list first) rest)))

(define (get-parity func rest)
  (if (null? rest)
      '()
      (if (func (car rest))
          (cons (car rest) (get-parity func (cdr rest)))
          (get-parity func (cdr rest)))))
