#lang racket
(require 2htdp/image)


(define CIRCULO_BRANCO (circle 40 "solid""white"))

(define QUADRADOS_COLORIDOS
         (above                                  
            (beside (rectangle 50 75 "solid" "red")
                    (rectangle 50 75 "solid" "green"))
            (beside (rectangle 50 75 "solid" "yellow")
                    (rectangle 50 75 "solid" "blue"))))

(define CONTORNO_PRETO (rectangle 110 160 "outline" "white"))
;usando a borda branca porque no meu computador estou usando o racket no modo dark.

(define CORINGA (overlay CIRCULO_BRANCO CONTORNO_PRETO QUADRADOS_COLORIDOS))

(define AZUL (rectangle 100 150 "solid" "blue"))
(define AMARELO (rectangle 100 150 "solid" "yellow"))
(define VERDE (rectangle 100 150 "solid" "green"))
(define VERMELHO (rectangle 100 150 "solid" "red"))

(define CARTA_AZUL (overlay CIRCULO_BRANCO CONTORNO_PRETO AZUL))
(define CARTA_AMARELO (overlay CIRCULO_BRANCO CONTORNO_PRETO AMARELO))
(define CARTA_VERDE (overlay CIRCULO_BRANCO CONTORNO_PRETO VERDE))
(define CARTA_VERMELHO (overlay CIRCULO_BRANCO CONTORNO_PRETO VERMELHO))

(beside CORINGA
CARTA_AZUL
CARTA_AMARELO
CARTA_VERDE
CARTA_VERMELHO)