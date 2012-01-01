;; Parentheses in Lisp are there to keep the amount of syntax to a minimum
;; List are created from cons cells
;; ' = data mode
;; You can create list by making cons cells
;; You can inspect the pieces of a list with car and cdr

(defun square (n)
  (* n n)
)

(defun is-foo-equal ()
  (eq 'foo 'Foo)
)

(defun num-1 () 
  (+ 1 1.0)  ;; 1 integer is posioned to a floating point
)

(defun num-2 () 
  (expt 53 53)
)

(defun num-3 ()
  (/ 4 6)
)

(defun num-4 ()
  (/ 4.0 6)
)

(defun strings-1 ()
  (princ "Tutti Frutti")
)

(defun strings-2 ()
  (princ "He yelled \"Stop that theif\" from the busy street.")
)

(defun cons-0 ()
  (cons 'chicken 'cat)
)

(defun cons-1 ()
  (cons 'chicken 'nil)
)

(defun cons-2 ()
  (cons 'chicken ())
)

(defun cons-3 ()
  (cons 'beef (cons 'chicken ()))
)

(defun cons-4 ()
  (cons 'pork (cons 'beef (cons 'chicken ())))
)

(defun cons-5 ()
  (car '(pork beef chicken))
)

(defun cons-6 ()
  (cdr '(pork beef chicken))
)

(defun cons-7 ()
  (car (cdr '(pork beef chicken)))
)

(defun cons-8 ()
  (cadr '(pork beef chicken))
)

(defun list-1 ()
  (list 'pork 'beef 'chicken)
)

(defun list-2 ()
  '(pork beef chicken)
)