(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (cube x) (* x x x))
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(define (identity n) n)

(define (sum-integer a b)
  (sum identity a inc b))