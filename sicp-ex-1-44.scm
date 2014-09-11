(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3.0)))

(define (n-smooth f n)
  ((repeat smooth n) f))