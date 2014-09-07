#lang racket
(require (planet dyoo/simply-scheme))

(define (tip t)
 (- t (* (ceiling t)
          (/ 15 100))))
  