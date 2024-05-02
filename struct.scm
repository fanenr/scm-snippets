(use-modules (ice-9 format))

(define person-vtable
  ; { name, age }
  (make-vtable "pwpw"
    (lambda (this port)
      (format port "#<~s { name: ~s, age: ~s }>"
        (struct-vtable-name (struct-vtable this))
        (struct-ref this 0)
        (struct-ref this 1)))))

(set-struct-vtable-name! person-vtable 'person)

(define p1 (make-struct/no-tail person-vtable
             "arthur" 20))

(format #t "p1.name: ~a, p1.age: ~a\n"
  (struct-ref p1 0)
  (struct-ref p1 1))

(struct-set! p1 1 21)

(format #t "p1: ~a\n" p1)
