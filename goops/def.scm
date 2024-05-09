(use-modules
  (oop goops)
  (ice-9 format)
  (oop goops describe))

(define-class <person> ()
  (age #:init-value 0 #:accessor age #:init-keyword #:age)
  (name #:init-value "" #:accessor name #:init-keyword #:name)
  (email #:init-value "" #:accessor email #:init-keyword #:email))

(define-method (print (p <person>))
  (format #t "~s {age: ~s, name: ~s, email: ~s}"
    p (age p) (name p) (email p)))

(define p (make <person> #:age 18
                         #:name "arthur"
                         #:email "arthur63@163.com"))

; (slot-ref obj 'slot)
; (slot-set! obj 'slot val)

; (accessor obj)
; (set! (accessor obj) val)

; (format #t "p.age: ~a\np.name: ~a\np.email: ~s\n"
;   (age p) (name p) (email p))

(print p)
(display "\n\n")

(set! (age p) 20)
(describe p)
