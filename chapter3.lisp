;; symbols are a fundamental data type in lisp 
;; ' (quotation mark) signifies data mode

;; (foo bla bla bla bla bla) - foo is comamnd, bla section is a form

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



