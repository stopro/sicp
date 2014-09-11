(define (product term a next b)
  (if (> a b)
      1.0
      (* (term a) (product term (next a) next b))))

(define (next x) (+ x 1))

(define (identity x) x)

(define (factor k)
  (define (divisor-k k)
    (if (even? k) k (+ k 1)))
  (define (divided-k k)
    (if (even? k) (+ k 1) k))
  (/ (divisor-k k) (divided-k k)))

(define (factorial n)
  (product-v2 factor 2 next n))

(define (product-v2 term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (* result (term a)))))
  (iter a 1.0))


