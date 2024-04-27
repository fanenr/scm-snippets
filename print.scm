(define (print-list args)
  (unless (null? args)
    (display (car args))
    (for-each (lambda (arg) (display #\space) (display arg)) (cdr args))))

(define (print . args)
  (print-list args))

(define (println . args)
  (print-list args)
  (newline))

(define (my-for-each pro ls)
  (when (and (list? ls) (not (null? ls)))
    (let ((first (car ls)) (rest (cdr ls)))
      (unless (null? first)
        (pro first))
      (unless (null? rest)
        (my-for-each pro rest)))))

(define (my-print-list args)
  (unless (null? args)
    (display (car args))
    (my-for-each (lambda (arg) (display #\space) (display arg)) (cdr args))))

(define (my-print . args)
  (my-print-list args))

(define (my-println . args)
  (my-print-list args)
  (newline))

(println)
(println 1)
(println 1 2)
(println 1 2 3)

(my-println)
(my-println 1)
(my-println 1 2)
(my-println 1 2 3)
