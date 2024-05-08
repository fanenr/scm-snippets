(use-modules (oop goops) (oop goops describe))

(define-class <person> ()
  age name email)

(define p (make <person>))

; (slot-ref instance 'slot)
; (slot-set! instance 'slot val)
(slot-set! p 'age 20)
(slot-set! p 'name "arthur")
(slot-set! p 'email "arthur63@163.com")

(describe p)
