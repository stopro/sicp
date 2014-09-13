(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (sign 0 (/ n g)) (/ d g))))
