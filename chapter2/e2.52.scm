;;2.
(define (corner-split painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter (- n 1))))
        (let ((top-left up)
              (bottom-right right)
              (corner (corner-split painter (- n 1))))
          (beside (below painter top-left)
                  (below bottom-right corner))))))

;;3.
(define (square-limit painter n)
  (let ((combine (square-of-four identify flip-horiz
                                 flip-vect rotate180)))
    (combine (corner-split painter n))))
