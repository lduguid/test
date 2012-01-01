; '() () 'nil nil -> are all the same
;


(defun empty-eq-1 ()
  (if '()
      'i-am-true
      'i-am-false)
)

(defun empty-eq-2 ()
  (if '(1)
      'i-am-true
      'i-am-false)
)

(defun my-length (list)
  (if list
      (1+ (my-length (cdr list)))
      0)
)

(defun nil-1 ()
  (eq '() nil)
)

(defun nil-2 ()
  (eq '() ())
)

(defun nil-3 ()
  (eq '() 'nil)
)

(defun if-1 ()
  (if (= (+ 1 2) 3)
      'yup
      'nope)
)

(defun if-2 ()
  (if (= (+ 1 2) 4)
      'yup
      'nope)
)

(defun if-3 ()
  (if '(1)
      'the-list-has-stuff-in-it
      'the-list-is-empty)
)

(defun if-4 ()
  (if '()
      'the-list-has-stuff-in-it
      'the-list-is-empty)
)

(defun if-5 ()
  (if (oddp 5)
      'odd-number
      (/ 1 0))
)

(defvar *number-is-odd* nil)

(defun progn-1 ()
  (if (oddp 5)
      (progn (setf *number-was-odd* t)
	     'odd-number)
      'even-number)
)

(defun when-1 ()
  (when (oddp 5)
    (setf *number-is-odd* t)
    'odd-number)
)

(defun unless-1 ()
  (unless (oddp 4)
    (setf *number-is-odd* nil)
    'even-number)
)

(defvar *arch-enemy* nil)
(defun pudding-eater-1 (person)
  (cond ((eq person 'henry) (setf *arch-enemy* 'stupid-lisp-alien)
	     '(curse you lisp alien - you ate my pudding))
	((eq person 'johnny) (setf *arch-enemy* 'useless-old-johnny)
	 '(i hope you choked on my pudding johnny))
	(t '(why you eat my pudding stranger ?))))

(defun pudding-eater-2 (person)
  (case person
    ((henry) (setf *arch-enemy* 'stupid-lisp-alien)
     '(curse you lisp alien - you ate my pudding))
    ((johnny) (setf *arch-enemy* 'useless-old-johnny)
     '(i hope you choked on my pudding johnny))
    (otherwise '(why you eat my pudding stranger ?))))
	     
  