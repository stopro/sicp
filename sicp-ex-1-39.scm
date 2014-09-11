(define (tan-frac n d k)
  (define (tan-frac-iter i)
    (if (= k i)
	(/ (n i) (d i))
	(/ (n i) (- (d i) (tan-frac-iter (+ i 1))))))
  (tan-frac-iter 1))


(define (tan-cf x k)
  (define (cf-d i)
    (if (= i 1)
	x
	(* x x)))
  (tan-frac cf-d
	     (lambda (i) (- (* i 2.0) 1.0))
	     k))