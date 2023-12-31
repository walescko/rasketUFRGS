;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2-TiagoWalesckoChimendes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;#lang racket
(require 2htdp/image)
(require racket/format)

;; Nome: TIAGO WALESCKO CHIMENDES    matrícula 97641

;; Em cada questão, há um início da solução. Essas linhas estão
;; sempre comentadas para não causar erros de compilação, pois
;; não estão completas (em muitos pontos há '...' nos locais onde
;; você devem completar a solução).

;;===============================================================
;;       DEFINIÇÕES DE CONSTANTES (NOMES) - não modifique!
;;===============================================================

;; Constantes que definem os valores associados às cartas especiais:
(define PULA_VEZ -1)
(define COMPRA2 -2)
(define INVERTE -3)
(define CURINGA -5)
(define CURINGA_COMPRA4 -4)

;; Constantes que definem as imagens que aparecerão nas cartas especiais:
(define IMG_PULA_VEZ  (text "Ø" 60 "black"))
(define IMG_COMPRA2   (text "+2" 60 "black"))
(define IMG_INVERTE   (text "«" 60 "black"))
(define IMG_CURINGA   empty-image)
(define IMG_CURINGA_COMPRA4  (text "+4" 60 "black"))

;; Constantes que definem as imagens que serão usadas para desenhar as cartas:
(define CIRCULO_BRANCO (circle 40 "solid" "white"))

(define QUADRADOS_COLORIDOS
         (above                                  
            (beside (rectangle 50 75 "solid" "red")
                    (rectangle 50 75 "solid" "green"))
            (beside (rectangle 50 75 "solid" "yellow")
                    (rectangle 50 75 "solid" "blue"))))


(define CONTORNO_PRETO (rectangle 110 160 "outline" "black"))
;usando a borda branca porque no meu computador estou usando o racket no modo dark.

;;===============================================================
;; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
;;===============================================================
;; ==> FUNÇÃO TRADUZ-COR
;; traduz-cor : ... -> ...
;; Objetivo: Dada uma cor, que pode ser  amarelo, verde, vermelho, azul ou colorido,
;; retorna a respectiva cor em ingles, ou seja, "blue", "green", "yellow", "red" ou "colors".
;; Exemplos:
;; (traduz-cor "azul") = ...
;; (traduz-cor "verde") = ...

;(define (traduz-cor ...) ;; Dada uma cor ...
;  (cond
;    ;; se ... for "azul, devolver "blue"
;    [... ...]
;    ;; se ... for "verde", devolver "green"
;    [(string=? "verde" ...) "green"]
;    ;; se ... for "vermelho, devolver "red"
;    [(string=? "vermelho" ...) "red"]
;    ;; se ... for "amarelo", devolver "yellow"
;    [(string=? "amarelo" ...) "yellow"]
;    ;; senão, devolver "colors"
;    [else ....]))
;

(define (traduz-cor color)
  (cond
    [(string=? color "azul") "blue"]
    [(string=? color "verde") "green"]
    [(string=? color "vermelho") "red"]
    [(string=? color "amarelo") "yellow"]
    [else "colors"]
    
    ))

;;; Testes:
(check-expect (traduz-cor "vermelho") "red")
(check-expect (traduz-cor "verde") "green")
(check-expect (traduz-cor "colorido") "colors")


;;===============================================================
;; 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
;;===============================================================
;; ========================
;; FUNÇÃO ESCOLHE-FUNDO 
;; ========================
;; escolhe-fundo: ... -> ...
;; Dada uma cor, que pode ser amarelo, verde, vermelho, azul ou colorido
;; gera a imagem de fundo para uma carta de UNO desta cor.
;; Exemplos:
;; (escolhe-fundo "vermelho")  desenha o fundo de uma carta vermelha
;; (escolhe-fundo "colorido")  desenha o fundo de uma carta curinga

;(define (escolhe-fundo ...) ;; dada uma cor ...
     ;; sobrepor

            ;; um círculo branco

            ;; o fundo (que pode ser de uma cor ou os quadrados coloridos, dependendo da entrada)

            ;; o contorno preto


(define (FUNDO color)
  (cond
    [(string=? color "colorido") QUADRADOS_COLORIDOS]
    [else (rectangle 100 150 "solid" (traduz-cor color))]))

(define (escolhe-fundo color)
   (overlay CIRCULO_BRANCO CONTORNO_PRETO (FUNDO color)))

(escolhe-fundo "amarelo")
(escolhe-fundo "vermelho")
(escolhe-fundo "azul")
(escolhe-fundo "verde")
(escolhe-fundo "colorido")

;;===============================================================
;; 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
;;===============================================================

;; ========================
;; ESCOLHE-SIMBOLO:
;; ========================
;; escolhe-simbolo: ... -> ....
;; Dado um número, que pode ser de 0 a 9 ou as constantes referentes às
;; cartas especiais de UNO, devolve uma imagem que representa este valor na carta.
;; Exemplos:
;;    (escolhe-simbolo 8) devolve a imagem do número oito
;;    (escolhe-simbolo COMPRA2) devolve a imagem +2

;(define (escolhe-simbolo ...)
;  (cond
;      ;; se a o valor for um número de 0 a 9, devolve a imagem deste valor
;      ...
;      ;; se a o valor for o da constante COMPRA2, desenha a imagem +2
;      ...
;      ;; se a o valor for o da constante INVERTE, desenha a imagem  «
;      ...  
;      ;; se a o valor for o da constante PULA_VEZ, desenha a imagem Ø -1
;      ...
;      ;; se a o valor for o da constante CURINGA, não desenha nada (devolve uma imagem vazia) -5
;      ...
;      ;; se a o valor for o da constante CURINGA_COMPRA4, devolve +4 +4
;      ...))

(define size 60)
(define (escolha-simbolo simbolo color)
  (cond
    [(and (> simbolo  0) (< simbolo 10))  (text (number->string simbolo) size (traduz-cor color))]
    [(= simbolo -1) IMG_PULA_VEZ]
    [(= simbolo -2) IMG_COMPRA2]
    [(= simbolo -3) IMG_INVERTE]
    [(= simbolo -4) IMG_CURINGA_COMPRA4]
    [(= simbolo -5) IMG_CURINGA]

))

(escolha-simbolo 9 "verde")
(escolha-simbolo -1 "preto")
(escolha-simbolo -2 "preto")
(escolha-simbolo -3 "preto")
(escolha-simbolo -4 "preto")
(escolha-simbolo -5 "preto")

;; ========================
;; DESENHA-CARTA
;; ========================
;; desenha-carta : Número String -> Imagem
;; Objetivo: Dados um número e uma cor, representando uma carta de UNO,
;; gera uma imagem para esta carta,
;; Exemplos:
;; (desenha-carta 4 "vermelho")  desenha a carta número 4 vermelha
;; (desenha-carta COMPRA4 "colorido")    desenha a carta curinga compra 4
;(define (desenha-carta um-numero uma-cor)
;      (overlay    ;; sobrepor
;          (escolhe-simbolo um-numero) ;; a imagem que representa o valor um-numero 
;          (escolhe-fundo uma-cor)))   ;; com a imagem do fundo da carta da uma-cor

(define (desenha-carta tipo color)
  (overlay
   (escolha-simbolo tipo color)
   (escolhe-fundo color)))

(define COMPRA4 CURINGA_COMPRA4)
(desenha-carta 4 "vermelho")
(desenha-carta 4 "verde")
(desenha-carta 4 "azul")
(desenha-carta 4 "amarelo")
(desenha-carta COMPRA4 "colorido")

;;===============================================================
;; 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
;;===============================================================
;; ========================
;; JOGADA-VÁLIDA?
;; ========================
;; jogada-válida? : number string number string -> boolean
;; Objetivo: A função analiza duas cartas (representadas por 4 argumentos:um
;; número e uma string, representando a carta da mão, e um número e uma string,
;; representando a carta da mesa, nesta ordem) e verifica se é possível
;; jogar uma sobre a outra, de acordo com as regras do UNO
;; Exemplos:
;;    (jogada-válida? 2 "vermelho" 4 "vermelho")=  #t 
;;    (jogada-válida? 2 "vermelho" CURINGA "colorido") = #t 
;;    (jogada-válida? CURINGA "colorido" 2 "vermelho") = #t
;;    (jogada-válida? 2 "vermelho" 2 "verde") = ...
;;    (jogada-válida? 2 "vermelho" 3 "verde") = ...

(define (jogada-válida?  number_hand color_hand number_table color_table)
  (cond
    [(or (= number_hand number_table) (string=? color_hand color_table)) #t]
    [(or (= CURINGA number_table) (string=? "colorido" color_table)) #t]
    
    [else #f]
   ))

;;; Testes:
;(check-expect (jogada-válida? 2 "vermelho" 4 "vermelho") #t)
;(check-expect (jogada-válida? 4 "verde" 4 "vermelho") #t)
;(check-expect (jogada-válida? 2 "verde" 4 "vermelho") #f)


(jogada-válida? 5 "vermelho" 4 "vermelho");=  #t
(jogada-válida? 4 "verde" 4 "vermelho");=  #t
(jogada-válida? 2 "amarelo" 9 "vermelho");=  #f
(jogada-válida? 2 "azul" 7 "verde");=  #f
(jogada-válida? CURINGA "colorido" 7 "verde")

;;===============================================================
;; 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
;;===============================================================
;; ========================
;; MOSTRA-JOGADA
;; ========================
;; mostra-jogada: number strint number string -> image
;; Objetivo: A função analiza duas cartas (representadas por 4 argumentos:um
;; número e uma string, representando a carta da mesa, e um número e uma string,
;; representando a carta da mão, nesta ordem) e verifica se é possível
;; jogar uma sobre a outra, de acordo com as regras do UNO, desenhando uma
;; imagem mostrando as cartas e se é possível fazer a jogada ou não.
;;
;;Exemplos
;;(mostra-jogada 2 "vermelho" 4 "vermelho") ;#true mostra carta da mesa vermelha 2 e a carta da mão vermelha 4
;;(mostra-jogada 2 "verde" 4 "vermelho") ;#false mostra carta da mesa verde 2 e a carta da mão vermelha 4
  ;;(mostra-jogada 2 "verde" 4 "verde") ;#true mostra carta da mesa verde 2 e a carta da mão vermelha 2

(define (mostra-jogada number_table color_table number_hand color_hand)
  (above (text (boolean->string(jogada-válida? number_hand color_hand number_table color_table)) 20 "black")
  (beside
  (desenha-carta number_table color_table)
  (desenha-carta number_hand color_hand)

  )))
 
(mostra-jogada 2 "vermelho" 4 "vermelho") ;#true mostra carta da mesa vermelha 2 e a carta da mão vermelha 4
(mostra-jogada 2 "verde" 4 "vermelho") ;#false mostra carta da mesa verde 2 e a carta da mão vermelha 4
(mostra-jogada 2 "verde" 4 "verde") ;#true mostra carta da mesa verde 2 e a carta da mão vermelha 2
                                  

