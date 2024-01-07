;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula07Exercices) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;#lang racket
;(require 2htdp/image)
;(require test-engine/racket-tests)
;total arrecado no dia
;entrada -> valores das vendas do dia, dependendo do números
;de itens vendidos durante o dia.
;Tipo de entrada será um número e a saída deve ser número.]
;uma função dá como resposta apenas uma saida
;Entrada -> Numero itens vendidos - 3 entradas
;Saída -> Valor total da arrecadação, uma saída
;Exemplo 01 - Rendimento 10% ao ano
;Entrada -> Deposito (Number)
;Saída -> Montante acumulado (Number)

(define taxa 0.1)
(define deposito 100)
(define MONTANTE (+ (* deposito taxa) deposito))
;MONTANTE
;Calcular a área do anel
;Entrada RaioMaior e RaioMenor
;Calcular cada uma das áreas e subratir a menor da maior
;área do anel: Number Number -> Number
;objetivo: dados dois números positivos, que correspondem ao raio interno
;e raio externo respectivamente, cálcular a área.
;O raio externo deve ser maior que o raio interno.

(define PI 3.14)

(define (areaCircle radius)(* PI (sqr radius)))

(define  (RingArea radiusExt radiusInt)
  (- (areaCircle radiusExt)(areaCircle radiusInt)))

;test
(check-expect (areaCircle 1) 3.14)
(check-expect (areaCircle 2) (* 4 3.14))
(check-expect (RingArea 5 3) 50.24)
(check-expect (RingArea 2 1) 9.42)
(RingArea 2 1)


