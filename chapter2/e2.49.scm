;;1.
(define top (make-segment (make-vect 0 1)
                          (make-vect 1 1)))
(define bottom (make-segment (make-vect 0 0)
                             (make-vect 1 0)))
(define left (make-segment (make-vect 0 0)
                           (make-vect 0 1)))
(define right (make-segment (make-vect 1 0)
                            (make-vect 1 1)))

(segment->painter (list top bottom left right))

;;2.
(define left-right (make-segment (make-vect 0 0)
                                 (make-vect 1 1)))
(define right-left (make-segment (make-vect 0 1)
                                 (make-vect 1 0)))

(segment->painter (list left-right right-left))

;;3.
(define left-bottom-mid (make-segment (make-vect 0 0.5)
                                      (make-vect 0.5 0)))
(define bottom-right-mid (make-segment (make-vect 0.5 0)
                                       (make-vect 1 0.5)))
(define right-top-mid (make-segment (make-vect 1 0.5)
                                    (make-vect 0.5 1)))
(define top-left-mid (make-segment (make-vect 0.5 1)
                                   (make-vect 0 0.5)))

;;4.
;;emmmmmmmmm,这个线段太多了。。。懒得数了
