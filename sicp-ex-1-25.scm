(define (fast-expt base exp)
  (cond ((= 0 exp) 1)
	((even? exp) (square (fast-expt base (/ exp 2))))
	(else (* base (fast-expt base (- exp 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))


  