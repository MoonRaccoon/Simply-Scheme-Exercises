#lang racket
(require (planet dyoo/simply-scheme))

(define (square N)
  (* N N))

(define (absolute-value N)
  (sqrt (square N)))