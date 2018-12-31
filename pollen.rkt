#lang racket/base

(require pollen/tag)

(provide (all-defined-out))


(define dialogue (default-tag-function 'section))

(define dialogue-intro-title (default-tag-function 'h1))

(define (dialogue-intro . rest)
  `(p ((class "intro")) ,@rest))

(define dialogue-title (default-tag-function 'h3))

(define (roman . rest)
  `(span ((class "roman")) ,@rest))

(define (interlocutor i)
  (let ([x (string-append i ": ")])
    `(span ((class "interlocutor")) ,x)))

(define (speaks i . rest)
  `(p ((class "saying")) ,(interlocutor i) ,@rest))

(define (make-interlocutor interlocutor)
  (lambda rest
    (apply speaks interlocutor rest)))

; for Endymion
(define (following . rest)
  `(p ((class "following")) ,@rest))
;
;
; interlocutors

(define ixion (make-interlocutor "Ixion"))
(define cloud (make-interlocutor "The Cloud"))
(define hippolochus (make-interlocutor "Hippolochus"))
(define sarpedon (make-interlocutor "Sarpedon"))
(define oedipus (make-interlocutor "Oedipus"))
(define tiresias (make-interlocutor "Tiresias"))
(define hermes (make-interlocutor "Hermes"))
(define chiron (make-interlocutor "Chiron"))
(define eros (make-interlocutor "Eros"))
(define thanatos (make-interlocutor "Thanatos"))
(define endymion (make-interlocutor "Endymion"))
(define stranger (make-interlocutor "Stranger"))
(define meleager (make-interlocutor "Meleager"))
