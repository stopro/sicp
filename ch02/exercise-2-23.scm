(define (for-each proc items)
  (define (zz-do proc items)
    (proc (car items))
    (for-each proc (cdr items)))
  (if (null? items)
      ()
      (zz-do proc items)))
    
      
(for-each (lambda (x) (newline) (display x))
	  (list 52 321 888))
