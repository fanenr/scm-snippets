#!/usr/bin/guile3.0 \
-e main -s
!#

(load "print.scm")

(define (main args)
  (print-list (cdr args))
  (newline))
