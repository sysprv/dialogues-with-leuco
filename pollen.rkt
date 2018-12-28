#lang racket/base

(require pollen/tag)

(provide (all-defined-out))


(define dialogue (default-tag-function 'section))

(define dialogue-intro-title (default-tag-function 'h1))

(define (dialogue-intro . rest)
  `(p ((class "intro")) ,@rest))

(define dialogue-title (default-tag-function 'h3))


(define (interlocutor i)
  (let ([x (string-append i ": ")])
    `(span ((class "interlocutor")) ,x)))

(define (speaks i . rest)
  `(p ((class "saying")) ,(interlocutor i) ,@rest))

(define (make-interlocutor interlocutor)
  (lambda rest
    (apply speaks interlocutor rest)))

;
;
; interlocutors

(define ixion (make-interlocutor "Ixion"))
(define cloud (make-interlocutor "The Cloud"))
(define meleager (make-interlocutor "Meleager"))
(define hermes (make-interlocutor "Hermes"))
