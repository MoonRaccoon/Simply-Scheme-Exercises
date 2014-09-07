#lang racket
(require (planet dyoo/simply-scheme))

(define (square N)
  (* N N))

(define (fourth_multiplication N)
  (* N N N N))

(define (fourth_doublesquared N)
  (square (square N)))