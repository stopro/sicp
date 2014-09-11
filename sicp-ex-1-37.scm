(define (cont-frac n d k)
  (define (cont-frac-iter i)
    (if (= k i)
	(/ (n i) (d i))
	(/ (n i) (+ (d i) (cont-frac-iter (+ i 1))))))
  (cont-frac-iter 1))

(define (cont-frac-k k)
  (cont-frac-it (lambda (i) 1.0)
	     (lambda (i) 1.0)
	     k))

(define (close-enough? x y)
  (< (abs (- x y)) 0.0001))

(define (find-better-cont-frac)
  (define (finder k)
    (let ((next (cont-frac-k (+ k 1))))
      (if (close-enough? (cont-frac-k k) next)
	  next
	  (finder (+ k 1)))))
  (finder 1))

(define (cont-frac-it n d k)
  (define (cont-frac-iter2 i result)
    (if (= i 1)
	result
	(cont-frac-iter2 (- i 1) (/ (n i) (+ (d i) result)))))
  (cont-frac-iter2 k (/ (n k) (d k))))
    
    

  



