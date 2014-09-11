(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divided? test-divisor n) test-divisor)
	(else (find-divisor n (next test-divisor)))))
(define (divided? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (term a) (filtered-accumulate combiner null-value term (next a)  next b filter))
	  (combiner null-value (filtered-accumulate combiner null-value term (next a) next b filter)))))

(define (sum-square-prime a b)
  (filtered-accumulate + 0 square a next b prime?))

(define (product-relative-prime n)
  (define (gcd-filter x) (= 1 (gcd x n)))
  (filtered-accumulate * 1 identity 1 next n gcd-filter))



