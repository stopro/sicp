(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
	    (square-list (cdr items)))))

(square-list (list 1 2 3 4 5 6 7))

(define (square-list items)
  (map square items))