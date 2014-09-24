(define (same-parity seed . rest)
  (define (same-parity? a b)
    (= (remainder a 2) (remainder b 2)))
  (define (iter seed rest result)
    (if (null? rest)
	result
	(if (same-parity? seed (car rest))
	    (iter seed (cdr rest) (append result (list (car rest))))
	    (iter seed (cdr rest) result))))
  (iter seed rest (list seed)))

(same-parity 2 4 5 6 7 8 9 10 33 40)
	     
  
       