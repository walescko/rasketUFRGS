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

(define (is-five? num)
  (= num 5))

(is-five? 6)
(is-five? 5)
(is-five? 4)

(define (between4-6? number)
  (and
   (< 4 number)
   (> 6 number)))

(between4-6? 3)
(between4-6? 4)
(between4-6? 5)
(between4-6? 6)
(between4-6? 7)



  
;Entrada: A média do aluno
;Saída: mostra uma imagem com a média do aluno
;Dada uma média de uma aluno, mostrar a média dentro de
;uma estrela se ela for maior ou igual a 7, ou dentro de
;um circulo vermelho caso contrário.
