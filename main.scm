#!/usr/bin/guile3.0 \
-e main -s
!#

(load "print.scm")

(use-modules
  ((arthur print) #:prefix my:))

(define (++ n)
  (+ n 1))

; (define (assert test . strs)
;   (unless test
;     (call-with-values
;       (lambda ()
;         (apply values strs))
;       my:println)
;     (exit 1)))

; (define (assert test . strs)
;   (unless test
;     (my:println-list strs)
;     (exit 1)))

(define (assert test . strs)
  (unless test
    (apply my:println strs)
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
  ;   (my:println i)
  ;   (if (>= i max) 'null
  ;     (loop (++ i))))

  (do ((i 0 (++ i))) ((>= i max) 'null)
    (my:println i)))
