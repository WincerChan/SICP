(define (accumulate op initial seqence)
  (if (null? seqence)
      initial
      (op (car seqence)
          (accumulate op initial (cdr seqence)))))

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))
