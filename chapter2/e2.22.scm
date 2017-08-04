a.
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items '()))
;; 这个比较简单，用带换模型展开就知道了

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items '()))

;;;;;;;;;;;;;;;
1 (user) => (square-list (list 1 2 5 6))

;;Value 48: ((((() . 1) . 4) . 25) . 36)
;; 这个有一点难度，其实出现这个问题是和cons的性质有关的
;; 当执行(cons 1 '())时，得到的结果是(1)
;; 当执行(cons '() 1)时，得到的结果是(() . 1)
;; 于是：
;; 当cdr为'()时，cdr省去不写
;; 当cdr不为空时，若car为'()，则必须将car指向'()，不能省略
;; 一旦省略就代表(cons 1 '())、(cons '() 1)是相同的了
