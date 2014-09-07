#lang racket
(require (planet dyoo/simply-scheme))

#|5.1_Question: What values are printed when you type these 
expressions to Scheme? (Figure it out in your head before you
try it on the computer.)

(sentence 'I '(me mine))

(sentence '() '(is empty))

(word '23 '45)

(se '23 '45)

(bf 'a)

(bf '(aye))

(count (first '(maggie mae)))

(se "" '() "" '())

(count (se "" '() "" '()))

5.1_Answers:

5.1.1: '(I me mine)

5.1.2: '(is empty)

5.1.3: 2345 

5.1.4: '(23 45) 

5.1.5. ""
 
5.1.6. '()
 
5.1.7. 6
 
5.1.8. '("" "")
 
5.1.9. 2
 
5.2_Question: For each of the following examples, write a procedure
of two arguments that, when applied to the sample arguments, 
returns the sample result. Your procedures may not include 
any quoted data.

> (f1 '(a b c) '(d e f))
(B C D E)

> (f2 '(a b c) '(d e f))
(B C D E AF)

> (f3 '(a b c) '(d e f))
(A B C A B C)

> (f4 '(a b c) '(d e f))
BE

5.2_Answers:|#

(define 