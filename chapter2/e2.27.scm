(define (deep-reverse x)
  (if (pair? x)
      (reverse (map deep-reverse x))
      x))
