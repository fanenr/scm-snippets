#!/usr/bin/guile3.0 \
-e main -s
!#

(load "print.scm")

(define (++ n)
  (+ n 1))

; (define (assert expr . strs)
;   (unless expr
;     (call-with-values (lambda () (apply values strs))
;                       println)
;     (exit 1)))

(define (assert expr . strs)
  (unless expr
    (println-list strs)
    (exit 1)))

(define (main args)
  (define args-size (length args))
  ; (unless (eqv? args-size 2)
  ;   (error "usage:" (car args) "<max>"))
  (assert (eqv? args-size 2) "usage:" (car args) "<max>")

  (define max (string->number (list-ref args 1)))
  ; (unless (integer? max)
  ;   (error "Please pass a integer"))
  (assert (integer? max) "please pass a integer")

  ; (let loop ((i 0))
  ;   (println i)
  ;   (if (>= i max) 'null
  ;     (loop (++ i))))

  (do ((i 0 (++ i))) ((>= i max) 'null)
    (println i)))
