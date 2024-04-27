#!/usr/bin/guile3.0 -s
!#

(define (print . args)
  (for-each display args))

(define (println . args)
  (for-each display args)
  (newline))

(define str1 "hello")
(define str2 "hello")

(print "(eqv? str1 str2): ")
(println (eqv? str1 str2))

(newline)

(print "(equal? str1 str2): ")
(println (equal? str1 str2))

(newline)

(define (my-for-each pro ls)
  (when (and (list? ls) (not (null? ls)))
    (let ((first (car ls)) (rest (cdr ls)))
      (unless (null? first)
        (pro first))
      (unless (null? rest)
        (my-for-each pro rest)))))

(define (my-print-impl args)
  (when (and (list? args) (not (null? args)))
    (let ((first (car args)) (rest (cdr args)))
      (unless (null? first)
        (display first))
      (unless (null? rest)
        (display #\space)
        (my-print-impl rest)))))

(define (my-print . args)
  (my-for-each (lambda (arg) (display arg) (display #\space)) args))

(define (my-println . args)
  (my-print args)
  (newline))

(my-println)
(my-println 1)
(my-println 1 2)
(my-println 1 2 3)
