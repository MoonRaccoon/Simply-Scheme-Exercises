#lang racket
(require (planet dyoo/simply-scheme))

#|BORING EXERCISES:
 
7.1 The following procedure does some redundant computation.

(define (gertrude wd)
  (se (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd))

> (gertrude 'rose)
(A ROSE IS A ROSE IS A ROSE)

> (gertrude 'iguana)
(AN IGUANA IS AN IGUANA IS AN IGUANA)
Use let to avoid the redundant work.

7.1A: |#

(define (vowel? c)
  (member? c 'aeiou))


(define (gertrude wd)
  (let ((con (vowel? (first wd))))
    (se (if con 'an 'a)
        wd
        'is
        (if con 'an 'a)
        wd
        'is
        (if con 'an 'a)
        wd)))

#|7.2 Put in the missing parentheses:

7.2A:|#

(define (pies)
  (let ((pi 3.14159)
        (pie '(lemon meringue)))
    (se '(pi is) pi '(but pie is) pie)))

#|7.3. The following program doesn't work. Why not? Fix it.

(define (superlative adjective word)
  (se (word adjective 'est) word))
It's supposed to work like this:

> (superlative 'dumb 'exercise)
(DUMBEST EXERCISE)

7.3A: The program doesn't worn because a local variable has
the same name as a previously defined function.|#

(define (superlative adjective wd)
  (se (word adjective 'est) wd))

#|7.4. What does this procedure do? Explain how it manages
to work.

(define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))

7.4A: The procedure lets the operator + equal the operator
* and vice versa. It then calculates the sum of the squares of
a and b using + in place of * and * in place of +.|#

(define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))
       