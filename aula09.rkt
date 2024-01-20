;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula09) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (mostra-media-estrela n)
  (overlay
   (text (number->string (exact->inexact n)) 20 "black")
   (star 60 "solid" "yellow"))) 


(mostra-media-estrela 13)

(mostra-media-estrela 8.33)