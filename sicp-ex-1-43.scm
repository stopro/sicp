(define (numberical-func f n)
  (lambda (x) (cond ((= 1 n)
		     (f x))
		    ((even? n)
		     ((compose (numberical-func f (/ n 2)) (numberical-func f (/ n 2))) x))
		    (else
		     ((compose f (numberical-func f (- n 1))) x)))))

(define (repeat f n) 
    (if (< n 1) 
        (lambda (x) x) 
        (compose f (repeat f (- n 1))))) 
		     
