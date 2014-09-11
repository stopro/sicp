(define (quard-root x)
  (fixed-point ((repeat average-damp 2) (lambda (y) (/ x (cube y))))
	       1.0))

(define (panta-root x)
  (fixed-point ((repeat average-damp 2) (lambda (y) (/ x (quare y)))) 
	       1.0))

(define (n-power x n)
  (define (n-power-iter n result)
    (if (= n 0)
	result
	(n-power-iter (- n 1) (* result x))))
  (n-power-iter n 1))

(define (quare x)
  (* x x x x))

 (define (get-max-pow n) 
   (define (iter p r) 
     (if (< (- n r) 0) 
         (- p 1) 
         (iter (+ p 1) (* r 2)))) 
    
   (iter 1 2)) 
  
 (define (pow b p) 
   (define (even? x) 
     (= (remainder x 2) 0)) 
    
   (define (sqr x) 
     (* x x)) 
    
   (define (iter res a n) 
     (if (= n 0) 
         res 
         (if (even? n) 
             (iter res (sqr a) (/ n 2)) 
             (iter (* res a) a (- n 1))))) 
    
   (iter 1 b p)) 
  
 (define (nth-root n x) 
   (fixed-point ((repeat average-damp (get-max-pow n)) 
                 (lambda (y) (/ x (pow y (- n 1))))) 
                1.0)) 

