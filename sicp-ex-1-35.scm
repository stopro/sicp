(define (golden-ratio)
  (fixed-point (lambda (x) (+ 1 (/ 1.0 x)))
	       1.0))