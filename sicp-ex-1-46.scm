;; General computational strategy "Iterative improvement"
(define (echo msg)			;
  (display msg))

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess)
	guess
	((iterative-improve good-enough? improve) (improve guess)))))


(define (sqrt-general x)
  (define (improve y)
    (average y (/ x y)))
  (define (good-enough? guess)
      (< (abs (- guess (improve guess))) 0.0001))
  ((iterative-improve good-enough? improve) 1.0))

(define (fixed-point f first-guess)
  (define (good-enough? guess)
    (< (abs (- guess (f guess))) 0.00001))
  ((iterative-improve good-enough? f) first-guess))

(define (sqrt-by-fixed-point x)
  (fixed-point (lambda (y) (average y (/ x y)))
	       1.0))
