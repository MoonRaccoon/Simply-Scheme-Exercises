#lang racket
(require (planet dyoo/simply-scheme))

(define (scientific a b)
  (* a (expt 10 b)))