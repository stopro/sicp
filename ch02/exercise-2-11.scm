; I don't think of sign of bound, as in real world.
; However, programatically, we should consider it.

(define (old-mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
	(p2 (* (lower-bound x) (upper-bound y)))
	(p3 (* (upper-bound x) (lower-bound y)))
	(p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
		   (max p1 p2 p3 p4))))

(define (mul-interval x y)
  (define (signal-of m)
    (cond ((and (>= (lower-bound m) 0) (>= (upper-bound m) 0))
	   1)
	   ((and (< (lower-bound m) 0) (< (upper-bound m) 0))
	   -1)
	   (else 0)))
  (let ((signal-of-x (signal-of x))
	(signal-of-y (signal-of y))
	(up-x (upper-bound x))
	(lo-x (lower-bound x))
	(up-y (upper-bound y))
	(lo-y (lower-bound y)))
    (cond ((> signal-of-x 0)
	   (cond ((> signal-of-y 0)
		  (make-interval (* lo-x lo-y) (* up-x up-y)))
		 ((< signal-of-y 0)
		  (make-interval (* up-x lo-y) (* lo-x up-y)))
		 (else
		  (make-interval (* up-x lo-y) (* up-x up-y)))))
	  ((< signal-of-x 0)
	   (cond ((> signal-of-y 0)
		  (make-interval (* lo-x up-y) (* up-x lo-y)))
		 ((< signal-of-y 0)
		  (make-interval (* up-x up-y) (* lo-x lo-y)))
		 (else
		  (make-interval (* lo-x up-y) (* lo-x lo-y)))))
	  ((= signal-of-x 0)
	   (cond ((> signal-of-y 0)
		  (make-interval (* lo-x up-y) (* up-x up-y)))
		 ((< signal-of-y 0)
		  (make-interval (* up-x lo-y) (* lo-x lo-y)))
		 ((= signal-of-y 0)
		  (make-interval (min (* lo-x up-y) (* up-x lo-y))
				 (max (* lo-x lo-y) (* up-x up-y)))))))))

(define (equal-interval? a b)
  (and (= (lower-bound a) (lower-bound b))
       (= (upper-bound a) (upper-bound b))))

(define (ensule-mult-works aH aL bH bL)
  (let ((a (make-interval aL aH))
	(b (make-interval bL bH)))
    (if (equal-interval? (old-mul-interval a b)
			 (mul-interval a b))
	true
	(error "new mult returs different value!"
	       a
	       b
	       (old-mul-interval a b)
	       (mul-interval a b)))))



(ensule-mult-works +10 +10 +10 +10)
(ensule-mult-works +10 +10 0 +10)
(ensule-mult-works +10 +10 0 0)
(ensule-mult-works +10 +10 0 -10)
(ensule-mult-works +10 +10 +10 0)
(ensule-mult-works +10 +10 +10 -10)
(ensule-mult-works +10 +10 -10 +10)
(ensule-mult-works +10 +10 -10 0)
(ensule-mult-works +10 +10 -10 -10)



    
	  
		
	      
		    
    
