(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))

(define (cubic-exp a b c)
  (newton-method (cubic a b c)
		 1))