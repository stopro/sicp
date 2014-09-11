(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt-av x)
  (fixed-point-of-transform (lambda (y) (/ x y))
			    average-damp
			    1.0))

(define (sqrt-newton-2 x)
  (fixed-point-of-transform (lambda (y) (- (square y) x))
			    newton-transform
			    1.0))