#!/usr/bin/guile3.0 \
-e main -s
!#

(load "print.scm")

(define (++ n)
  (+ n 1))

(define (assert bool msg)
  (unless bool
    (println msg)
    (exit 1)))

(define (main args)
  (define args-size (length args))
  (assert (>= args-size 1) "Please pass a number")

  (define max (string->number (list-ref args 1)))
  (assert max "Please pass a number")

  (let loop ((i 0))
    (println i)
    (if (>= i max) 'null
      (loop (++ i)))))
