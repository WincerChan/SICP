;; a).
(define (get-record a-file employee)
  ((get a-file 'record) employee))

;; b).
(define (get-salary a-file record)
  ((get a-file 'salary) record))

;; c).
(define (find-employee-record employee files)
  (if (null? files)
      #f
      (or (get-record (car files) employee)
          (find-employee-record employee (cdr files)))))

;; d).
;; 新公司必须将get-record 和get-salary安装到系统中
