;;b).
;; 和式
(define (deriv exp var)
  (make-sum (deriv (addend exp) var)
            (deriv (augend exp) var)))

;; 积式
(define (deriv-product exp var)
  (make-sum (make-product (multiplier exp)
                          (deriv (multiplicand exp) var))
            (make-product (deriv (multiplier exp) var)
                          (multiplicand exp))))


(define (install-deriv)
  (put 'deriv '+ deriv-sum)
  (put 'deriv '* deriv-product)
  'done)
;;c).
(put 'deriv '(**) deriv-exponentiation)
(define (deriv-exponentiation exp var)
  (let ((base (base exp))
        (exponent (exponent exp)))
    (make-product exponent
                  (make-product (make-exponentiation base
                                                     (make-sum exponent -1))
                                (deriv base var)))))

(define (install-deriv)
  (put 'deriv '+ deriv-sum)
  (put 'deriv '* deriv-product)
  (put 'deriv '** deriv-exponentiation)
  'done)
;; d).

(define (install-deriv)
  (put '+ 'deriv deriv-sum)
  (put '* 'deriv deriv-product)
  (put '** 'deriv deriv-exponentiation)
  'done)
