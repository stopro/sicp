(define (div-interval x y)
  (if (or (= 0 (upper-bound y)) (= 0 (lower-bound y)))
      (display "Division by zero signalled by /.")
      (mul-interval x
		    (make-interval (/ 1.0 (upper-bound y))
				   (/ 1.0 (lower-bound y))))))

