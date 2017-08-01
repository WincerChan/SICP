(define (start-segment n d)
  (cons n d))

(define (end-segment n d)
  (cons n d))

(define (make-segment start end) (cons start end))

;; 以宽和高构造
(define a-segment (make-segment (start-segment 1 2) (emd-segment 1 0)))

(define b-segment (make-segment (start-segment 1 0) (emd-segment 3 0)))

(define (make2-rectangle a-segment b-segment)
  (cons a-segment b-segment))



;; 以三个点构造
(define point1 (start-segment 1 2))

(define point2 (end-segment 1 0))

(define point3 (end-segment 3 0))

(define (make1-rectangle point1 point2 point3)
  (cons (make-segment point1 point2)
        (make-segment point2 point3)
        ))


;; 面积
(define (area-rectangle one-rectangle)
  (* (sub (car (car one-rectangle)) (cdr (car one-rectangle)))
     (sub (car (cdr one-rectangle)) (cdr (cdr one-rectangle)))))

(define (sub x y)
  (sqrt (+ (square (- (car x) (car y)))
           (square (- (cdr x) (cdr y))))))

;; 周长
(define (perimeter-rectangle one-rectangle)
  (* (+ (sub (car (car one-rectangle)) (cdr (car one-rectangle)))
        (sub (car (cdr one-rectangle)) (cdr (cdr one-rectangle)))) 2))
