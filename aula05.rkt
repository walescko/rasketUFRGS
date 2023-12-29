;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula05) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;#lang racket
(require 2htdp/image)
;(+ 2 3)
;(- 5 4)
;(* 4 6)
;(/ 7 2)

;(* 2 5)
;(- 20 (+ 3 7))
;(/(+(* 4 (+ 2 3)) 20) 4)
;(define image01
;  (rectangle 50 20 "solid" "red")
;  )

;image01

;(overlay
;(rectangle 500 20 "outline" "red")
;(rectangle 500 20 "solid" "blue"))
;
;(beside (rectangle 20 10 "solid" "red")(circle 20 "solid" "blue"));
;
;                  (rectangle 150 40 "solid" "red")
;                  (rectangle 150 40 "solid" "orange")
;                 (rectangle 150 40 "solid" "gold")

;(define MINHA-BANDEIRA
;  (overlay (above 
;           (text "Walescko" 16 "Dark Blue")
;           (text "1903" 16 "Dark Blue"))
    ;       (above ;
           ;      (rectangle 150 39 "solid" "Royal Blue")
;                 (rectangle 150 42 "solid" "White")
;                 (rectangle 150 39 "solid" "Black"))))
;
;MINHA-BANDEIRA

;definindo variaveis
(define RBlue
  (rectangle 150 40 "solid" "blue"))
(define RRed
  (rectangle 150 40 "solid" "red"))
(define RGreen
  (rectangle 150 40 "solid" "green"))
(define RYellow
  (rectangle 150 40 "solid" "yellow"))

(above RBlue RRed RGreen RYellow)
