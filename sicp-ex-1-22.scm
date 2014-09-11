(define (timed-prime-test n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (fast-prime? n 1000)
      (report-prime n start-time)))
(define (report-prime n  start-time)
  (newline)
  (display n)
  (display " ***")
  (display (- (runtime) start-time)))

(define (search-for-primes starter end) 
  (if (even? starter)
      (search-odd-for-primes (+ starter 1) end)
      (search-odd-for-primes starter end)))

(define (search-odd-for-primes a b)
  (timed-prime-test a)
  (if (>= b (+ a 2))
      (search-odd-for-primes (+ a 2) b)))


(search-for-primes 10000000000 10000000061)
(search-for-primes 100000000000 100000000061)
