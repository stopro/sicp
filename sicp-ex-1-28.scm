(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))

(define (test-carmichael n)
  (try-carmichael n 2))

(define (same-mod? n a)
  (= (expmod a (- n 1) n) (remainder 1 n)))

(define (try-carmichael n a)
  (cond ((= a n) true)
	((same-mod? n a) (try-carmichael n (+ a 1)))
	(else (report-bug a))))

(define (report-bug a)
  (display " * find a bug * ")
  (display a))

      
  