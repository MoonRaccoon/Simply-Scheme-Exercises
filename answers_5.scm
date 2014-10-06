#lang racket
(require (planet dyoo/simply-scheme))

(define (square x)
  (* x x))

#|BOOORING EXERCISES:

5.1_Question: What values are printed when you type these 
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

(define (f1 a b)
  (se (first (butfirst a))
      (last a)
      (first b)
      (first (butfirst b))))

(define (f2 x y)
  (se (first (butfirst x))
      (last x)
      (first y)
      (first (butfirst y))
      (word (first x) (last y))))

(define (f3 s1 s2)
  (se s1 s1))

(define (f4 r1 r2)
  (se (word (first (butfirst r1))
      (first (butfirst r2)))))

#| 5.3 Explain the difference in meaning between 
(first 'mezzanine) and (first '(mezzanine)).
 
5.3A: The expression (first 'mezzanine) returns the first letter
of the word 'mezzanine, while the expression (first '(mezzanine))
returns the first word of the sentence '(mezzanine).

5.4 Explain the difference between the two expressions 
(first (square 7)) and (first '(square 7)).

5.4A: The expression (first (square 7)) returns the first character
 of the number (square 7), aka 49.

5.5 Explain the difference between (word 'a 'b 'c) and
(se 'a 'b 'c).

5.5A: The expression (word 'a 'b 'c) returns the word
'abc, while the expression (se 'a 'b 'c) returns the 
sentence '(abc).

5.6 Explain the difference between (bf 'zabadak) and 
(butfirst 'zabadak).

5.6A: No difference.
 
5.7. Explain the difference between (bf 'x) and (butfirst '(x)).

5.7A: The expression (bf 'x) returns all but the first 
character of the word 'x, whereas (butfirst '(x)) returns
the first word of the sentence '(x).

5.8. Which of the following are legal Scheme sentences?

(here, there and everywhere)
(help!)
(all i've got to do)
(you know my name (look up the number))

5.8A: All but (all i've got to do).

5.9. Figure out what values each of the following will return 
before you try them on the computer:

(se (word (bl (bl (first '(make a))))
          (bf (bf (last '(baseball mitt)))))
    (word (first 'with) (bl (bl (bl (bl 'rigidly))))
          (first 'held) (first (bf 'stitches))))

(se (word (bl (bl 'bring)) 'a (last 'clean))
    (word (bl (last '(baseball hat))) (last 'for) (bl (bl 'very))
	  (last (first '(sunny days)))))

5.9A: '(Matt Wright),
'(Brian Harvey).

5.10. What kinds of argument can you give butfirst
so that it returns a word?

5.10A: "Give butfirst a word, and you shall receive a word;
 give butfirst a sentence and you shall receive a sentence."
 - So Crates the Coding Philosophizer.

5.11. What kinds of argument can you give last so that it 
returns a word? A sentence?

5.11A: "Give last a word, and you shall receive a word;
 give butfirst a sentence and you shall receive a word."
 - So Crates the Coding Philosophizer.

5.12. Which of the functions first, last, butfirst can return
 an empty word? For what arguments? What about returning an
empty sentence?

5.12A: Butfirst and Butlast can both return an empty word
AND an empty sentence for one-character words and 
one-word sentences respectively.

REEEAAAAL EXERCISES:

5.13. What does ' 'banana stand for?

What is (first ' 'banana) and why?

5.13A: The sentence  '(quote banana).
 
The expression (first ' 'banana) returns 'quote. This is because
' 'banana stands for quote(quote banana), which results in the 
 sentence '(quote banana). Applying First to this sentence
therefore returns the word 'quote.

5.14. Write a procedure third that selects the third letter
of a word (or the third word of a sentence). 

5.14A:|#

(define (third str)
  (first (butfirst (butfirst str))))

#|5.15. Write a procedure first-two that takes a word as its 
argument, returning a two-letter word containing the first
two letters of the argument.

5.15A:|#

(define (first-two wd)
  (word (first wd) (first (butfirst wd))))


#|5.16. Write a procedure two-first that takes two words as
arguments, returning a two-letter word containing the first
letters of the two arguments.

> (two-first 'brian 'epstein)
BE

Then write a procedure two-first-sent that takes a two-word
sentence as argument, returning a two-letter word containing
the first letters of the two words.

> (two-first-sent '(brian epstein))
BE

5.16A:|#

(define (two-first wd1 wd2)
  (word (first wd1) (first wd2)))

(define (two-first-sent se)
  (word (first (first se))
        (first (first (butfirst se)))))

#|5.17. Write a procedure knight that takes a person's name
as its argument and returns the name with "Sir" in front of it.

> (knight '(david wessel))
(SIR DAVID WESSEL)  

5.17A:|#

(define (knight name)
  (sentence '(Sir) name))

#|5.18 Try the following and explain the result:

(define (ends word)
  (word (first word) (last word)))

> (ends 'john)
 
5.18A:|#

(define (ends wd)
  (word (first wd) (last wd)))

#|This procedure returns the first and last letter of 
a word combined.

5.19 Write a procedure insert-and that takes a sentence of
items and returns a new sentence with an "and" in the right
place:

> (insert-and '(john bill wayne fred joey))
(JOHN BILL WAYNE FRED AND JOEY)

5.19A:|#

(define (insert-and se)
  (sentence (butlast se)
            '(and)
            (last se)))

#|5.20 Define a procedure to find somebody's middle names:

> (middle-names '(james paul mccartney))
(PAUL)

> (middle-names '(john ronald raoul tolkien))
(RONALD RAOUL)

> (middle-names '(bugs bunny))
()

> (middle-names '(peter blair denis bernard noone))
(BLAIR DENIS BERNARD)
 
5.20A:|#

(define (middle-names name)
  (butfirst (butlast name)))

#|5.21. Write a procedure query that turns a statement into a
question by swapping the first two words and adding a question
mark to the last word:

> (query '(you are experienced))
(ARE YOU EXPERIENCED?)

> (query '(i should have known better))
(SHOULD I HAVE KNOWN BETTER?)
 
5.21A:|#

(define (query se)
  (sentence (first (butfirst se))
            (first se)
            (butlast (butfirst (butfirst se)))
            (word (last se) '?)))
#| END |#