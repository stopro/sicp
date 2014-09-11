
(define (test-carmichael n)
  (try-carmichael n 2))

(define (same-mod? n a)
  (= (expmod a n n) (remainder a n)))

(define (try-carmichael n a)
  (cond ((= a n) true)
	((same-mod? n a) (try-carmichael n (+ a 1)))
	(else (report-bug a))))

(define (report-bug a)
  (display " * find a bug * ")
  (display a))

      
  