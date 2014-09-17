(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

; don't know how to implement the procedure of addition.:(
; http://community.schemewiki.org/?sicp-ex-2.6

(define (add a b) 
  (lambda (f) 
    (lambda (x) 
      ((a f) ((b f) x))))) 
  