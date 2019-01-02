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

(define (following . rest)
  `(p ((class "following")) ,@rest))

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
(define sappho (make-interlocutor "Sappho"))
(define britomart (make-interlocutor "Britomart"))
(define meleager (make-interlocutor "Meleager"))
(define achilles (make-interlocutor "Achilles"))
(define patroclus (make-interlocutor "Patroclus"))
(define beggar (make-interlocutor "Beggar"))
(define heracles (make-interlocutor "Heracles"))
(define prometheus (make-interlocutor "Prometheus"))
(define orpheus (make-interlocutor "Orpheus"))
(define bacchante (make-interlocutor "Bacchante"))
(define hunter1 (make-interlocutor "1st Hunter"))
(define hunter2 (make-interlocutor "2nd Hunter"))
(define lityerses (make-interlocutor "Lityerses"))
(define son (make-interlocutor "Son"))
(define father (make-interlocutor "Father"))
