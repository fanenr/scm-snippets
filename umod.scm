(load "mod.scm")

(use-modules
  ((my1) #:prefix my1:)
  ((my2) #:prefix my2:))

(my1:test1)
(my2:test2)
