;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;desenha-carta: StringOuNumero String -> Imagem
;;Dado ou o numero ou o tipo da carta a ser desenhada, e a cor, desenhar esta carta
(define (desenha-carta typeOrNumber color)
  