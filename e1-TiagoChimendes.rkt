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
  (overlay (beside (triangle 30 "solid" "DarkBlue")
          (above
                  (text "Walescko" 16 "DarkBlue")
                  (text "1903" 16 "DarkBlue")))
           (above
                  (rectangle 150 39 "solid" "RoyalBlue")
                  (rectangle 150 42 "solid" "White")
                  (rectangle 150 39 "solid" "Black"))))

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
(define colorWhite "white")
(define colorDarkBlue "DarkBlue")
(define colorBlack "black")
(define colorRoyalBlue "RoyalBlue")
;define figures
(define triangleMidle (triangle 30 "solid" colorDarkBlue))
(define BarUp (rectangle 150 39 "solid" colorRoyalBlue))
(define BarMidle (rectangle 150 42 "solid" colorWhite))
(define BarDown (rectangle 150 39 "solid" colorBlack))


;;===============================================================
;; 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
;;===============================================================
;; ==> desenha-minha-bandeira-mais-generica
;; desenha-minha-bandeira-mais-generica:  ...  -> ...
;; obj: ...
;; Exemplos:
;;    (desenha-minha-bandeira-mais-generica ......) retorna ....
;;    (desenha-minha-bandeira-mais-generica ......) retorna ....

;(define (desenha-minha-bandeira-mais-generica ....)
