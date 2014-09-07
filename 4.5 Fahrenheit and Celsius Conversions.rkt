#lang racket
(require (planet dyoo/simply-scheme))

(define (to-Celsius F)
  (* (/ 5 9) (- F 32)))

(define (to-Fahrenheit C)
  (+ (* (/ 9 5) C) 32))