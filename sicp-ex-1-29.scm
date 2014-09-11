(define (h-func a b n)
  (/ (- b a) n))

(define (multiplor k n)
  (cond ((or (= k 0) (= k n)) 1)
	((even? k) 2)
	(else 4)))

(define (simpson f a b n)
  (* (/ (h-func a b n) 3) (simpson-sum f a b n)))

(define (simpson-sum f a b n)
  (define (next-x x) (+ x (h-func a b n)))
  (define (simpson-cal f a b n k)
    (if (> a b)
	0
	(+ (* (f a) (multiplor k n)) (simpson-cal f (next-x a) b n (+ k 1)))))
  (simpson-cal f a b n 0))
    
  