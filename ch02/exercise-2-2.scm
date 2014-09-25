
(define (make-point x y)
  (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment starter ender)
  (cons starter ender))

(define (start-segment s) (car s))

(define (end-segment s) (cdr s))

(define (average a b)
  (/ (+ a b) 2.0))

(define (midpoint-segment s1)
  (make-point (average (x-point (start-segment s1)) (x-point (end-segment s1)))
	      (average (y-point (start-segment s1)) (y-point (end-segment s1)))))

(define onepoint (make-point 3 4))
(define endpoint (make-point 4 9))
(define onesegment (make-segment onepoint endpoint))
(print-point (midpoint-segment onesegment))
