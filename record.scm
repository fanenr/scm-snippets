(use-modules
  (srfi srfi-9)
  (ice-9 format)
  (srfi srfi-9 gnu))

(define-record-type <person>
  (person name age email)
  person?
  (age   person-age   set-person-age!)
  (name  person-name  set-person-name!)
  (email person-email set-person-email!))

(set-record-type-printer! <person>
  (lambda (this port)
    (format port
      "<person {name: ~s, age: ~s, email: ~s}>"
      (person-name  this)
      (person-age   this)
      (person-email this))))

(define p1 (person "arthur" 20 "arthur63@163.com"))
(format #t "name: ~s, age: ~s, email: ~s\n"
  (person-name  p1)
  (person-age   p1)
  (person-email p1))

(set-person-age! p1 21)
(format #t "~a\n\n" p1)

(define-immutable-record-type <iperson>
  (iperson name age email)
  iperson?
  (age   iperson-age   set-iperson-age)
  (name  iperson-name  set-iperson-name)
  (email iperson-email set-iperson-email))

(set-record-type-printer! <iperson>
  (lambda (this port)
    (format port
      "<iperson {name: ~s, age: ~s, email: ~s}>"
      (iperson-name  this)
      (iperson-age   this)
      (iperson-email this))))

(define p2 (iperson "arthur" 20 "arthur63@163.com"))
(format #t "name: ~s, age: ~s, email: ~s\n"
  (iperson-name  p2)
  (iperson-age   p2)
  (iperson-email p2))

(set! p2 (set-iperson-age p2 21))
(format #t "~a\n\n" p2)

(set! p1 (set-fields p1 ((person-age) 20)))
(set! p2 (set-fields p2 ((iperson-age) 20)))
(format #t "~a\n" p1)
(format #t "~a\n" p2)
