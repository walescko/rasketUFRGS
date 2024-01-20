;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula09) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (mostra-media-estrela n)
  (overlay
   (text (number->string (numero1CasaDec n)) 20 "black")
   (star 60 "solid" "yellow")))

(define (mostra-media-circulo n)
  (overlay
   (text (number->string (numero1CasaDec n)) 20 "black")
   (circle 60 "solid" "red"))) 

(define (numero1CasaDec n)
  (exact->inexact (/ (round (* n 10)) 10)))

(mostra-media-estrela (/ 8 3))
(mostra-media-estrela 8)
(mostra-media-circulo 9)
(mostra-media-circulo (/ 55 3))