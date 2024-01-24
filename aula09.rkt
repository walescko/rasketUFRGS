;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula09) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;Entrada: A média do aluno
;Saída: mostra uma imagem com a média do aluno
;Dada uma média de uma aluno, mostrar a média dentro de
;uma estrela se ela for maior ou igual a 7, ou dentro de
;um circulo vermelho caso contrário.

(define (mostra-media-estrela n)
  (overlay
   (text (number->string (numero1CasaDec n)) 20 "black")
   (star 60 "solid" "yellow")
    (rectangle 210 150 "solid" "blue")))

(define (mostra-media-circulo n)
  (overlay
   (text (number->string (numero1CasaDec n)) 20 "black")
   (circle 60 "solid" "red")
   (rectangle 210 150 "solid" "blue"))) 

(define (numero1CasaDec n)
  (exact->inexact (/ (round (* n 10)) 10)))


(define (mostra-media nota)
  (cond
    [(>= nota 7) (mostra-media-estrela nota)]
    [(< nota 7) (mostra-media-circulo nota)]
    ))


(define (calcula-media nota1 nota2 nota3)
   (/ (+ (* 3 nota3) (* 2 nota2) nota1) 6))

(define (media-final nota1 nota2 nota3)
  (mostra-media (calcula-media nota1 nota2 nota3)))

(media-final 8 5 3)
(media-final 8 9 3)
(media-final 6 6 8)



(calcula-media 3 3 3)



(mostra-media 3.7)
(mostra-media 7.1)
(mostra-media 6.9)
(mostra-media 8.5)


(text "Teste das Funções Circulo e Estrela" 30 "white")
(mostra-media-estrela (/ 8 3))
(mostra-media-estrela 8)
(mostra-media-circulo 9)
(mostra-media-circulo (/ 55 3))

(define (is-five? num)
  (= num 5))

(is-five? 6)
(is-five? 5)
(is-five? 4)

(text "Entre 4 e 6" 30 "white")
(define (between4-6? number)
  (and
   (<= 4 number)
   (>= 6 number)))

(between4-6? 3)
(between4-6? 4)
(between4-6? 5)
(between4-6? 6)
(between4-6? 7)

(define (above10? number1)
  (or
   (between4-6? number1)
   (> number1 10)))

(text "Above 10" 30 "White")
(above10? 3)
(above10? 4)
(above10? 5)
(above10? 8)
(above10? 11)

(define (fx number00)
  (* 2
     (cond
       [(= number00 1) number00]
       [(> number00 2) (- number00 1)]
       [else (- number00 2)]
       )))

(fx 1)
(fx 2)
(fx 3)
(fx 4)
