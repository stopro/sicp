(define (euler-d i)
  (if (= (remainder (+ i 1) 3) 0)
      (* (/ (+ i 1) 3) 2.0)
      1.0))

(define (approx-e k)
  (cont-frac (lambda (i) 1.0)
	     euler-d
	     k))