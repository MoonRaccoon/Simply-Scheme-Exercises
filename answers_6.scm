#lang racket
(require (planet dyoo/simply-scheme))

(define (square x)
  (* x x))

#|6.1  What values are printed when you type these expressions to Scheme? (Figure it out in your head before you try it on the computer.)

(cond ((= 3 4) '(this boy))
      ((< 2 5) '(nowhere man))
      (else '(two of us)))

(cond (empty? 3)
      (square 7)
      (else 9)) |#

(define (third-person-singular verb)
  (cond ((equal? verb 'be) 'is)
        ((equal? (last verb) 'o) (word verb 'es))
        (else (word verb 's))))

#| (third-person-singular 'go) 

6.1A: '(nowhere man), 3, 'goes.

6.2. What values are printed when you type these expressions to Scheme? (Figure it out in your head before you try it on the computer.)

(or #f #f #f #t)

(and #f #f #f #t)

(or (= 2 3) (= 4 3))

(not #f)

(or (not (= 2 3)) (= 4 3))

(or (and (= 2 3) (= 3 3)) (and (< 2 3) (< 3 4)))

6.2A: #t, #f, #f, #t, #t, #t. 

6.3. Rewrite the following procedure using a cond instead of the ifs:

(define (sign number)
  (if (< number 0)
      'negative
      (if (= number 0)
	  'zero
	  'positive)))

6.3A:|#

(define (sign number)
  (cond ((< number 0) 'negative)
        ((= number 0) 'positive)
        (else 'positive)))
#|6.4 Rewrite the following procedure using an if instead
of the cond:

(define (utensil meal)
  (cond ((equal? meal 'chinese) 'chopsticks)
	(else 'fork))) 

6.4A:|#

(define (utensil meal)
  (cond ((equal? meal 'chinese) 'chopsticks)
        (else 'fork)))

#|6.5 Write a procedure european-time to convert a time
from American AM/PM notation into European 24-hour notation.
Also write american-time, which does the opposite:

> (european-time '(8 am))
8

> (european-time '(4 pm))
16

> (american-time 21)
(9 PM)

> (american-time 12)
(12 PM)

> (european-time '(12 am))
24
Getting noon and midnight right is tricky.
 
6.5A:|#

(define (european_time tm)
  (cond ((equal? tm '(12 am)) (+ (first tm) 12))
        ((member? 'am tm) (first tm))
        ((member? 'pm tm) (+ (first tm) 12))))
        



