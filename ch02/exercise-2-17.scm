(define (last-pair ll)
  (if (= 1 (length ll))
      ll
      (last-pair (cdr ll))))

; A better solution
(define (last-pair-v2 items)
  (define (iter items result)
    (if (null? items)
	result
	(iter (cdr items) items)))
  (iter items items))

(last-pair (list 25 72 39 43))
(last-pair-v2 (list 25 72 39 43))