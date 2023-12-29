;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#lang racket
(require 2htdp/image)
;#reader(lib "htdp-intermediate-reader.ss" "lang")((modname exercicio-pratico1-solucao) (read-case-sensitive #t) (teachpacks ((lib "draw.ss" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.ss" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Nome: Tiago Walescko Chimendes - Matrícula 97641

;;===============================================================
;; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
;;===============================================================
;;constante MINHA-BANDEIRA:
(define MINHA-BANDEIRA
  (above                   
                  (rectangle 150 60 "solid" "RoyalBlue")
                  (overlay (beside
                   (triangle 30 "solid" "DarkBlue")
                   (text "1903" 20 "DarkBlue"))
                  (rectangle 150 60 "solid" "DarkGrey"))))

MINHA-BANDEIRA

;;===============================================================
;; 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
;;===============================================================
;; ==> desenha-minha-bandeira 
;; desenha-minha-bandeira:  ...  -> ...
;; obj: ...
;; Exemplos:
;;    (desenha-minha-bandeira ......) retorna ....
;;    (desenha-minha-bandeira ......) retorna ....

;(define (desenha-minha-bandeira ....)
;define colors
(define color00 "RoyalBlue")
(define color01 "DarkGrey")
(define color02 "DarkBlue")
;define figures
(define BarUp (rectangle 150 60 "solid" color00))
(define BarDown (rectangle 150 60 "solid" color01))
(define triangleMidle (triangle 30 "solid" color02))
(define (MyNumber choiceNumber)
  (text (number->string choiceNumber) 20 color02))

(define DESENHA-MINHA-BANDEIRA
  (above
     BarUp
     (overlay
      (beside 
      triangleMidle (MyNumber 1903))
     BarDown)))
  

DESENHA-MINHA-BANDEIRA


;;===============================================================
;; 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
;;===============================================================
;; ==> desenha-minha-bandeira-mais-generica
;; desenha-minha-bandeira-mais-generica:  Cor barra do top, cor barra inferior, número, cor trianglo e número  -> imagem da bandeira
;; obj: ...
;; Exemplos:
;;    (desenha-minha-bandeira-mais-generica "DodgerBlue" "Black" "1903" "White") retorna bandeira com barra superior na cor Dogde Blue, cor da barra inferior Black com o número 1903 e tringulo sobre a barra inferior na cor branca
;(define (desenha-minha-bandeira-mais-generica ....)

(define (BarTop barTopColor)
 (rectangle 150 60 "solid" barTopColor))

(define (BarBooton barDownColor)
 (rectangle 150 60 "solid" barDownColor))

(define (triangleDown fontColor)
 (triangle 30 "solid" fontColor))

(define (MyNumberG choiceNumber color02)
  (text (number->string choiceNumber) 20 color02))


(define (desenha-minha-bandeira-mais-generica barTopColor barDownColor MyNumber fontColor )
  (above
     (BarTop barTopColor)
     (overlay
      (beside 
      (triangleDown fontColor) (MyNumberG MyNumber fontColor))
     (BarBooton barDownColor))))

(desenha-minha-bandeira-mais-generica "DodgerBlue" "Black" 1903 "White")
(desenha-minha-bandeira-mais-generica "LimeGreen" "PaleGoldenrod" 1983 "Lime")
(desenha-minha-bandeira-mais-generica "Sea Green" "DarkViolet" 1995 "Dim Gray")
(desenha-minha-bandeira-mais-generica "RoyalBlue" "DeepSkyBlue" 2017 "Dark Slate Blue")
