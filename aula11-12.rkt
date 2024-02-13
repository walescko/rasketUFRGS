;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula11-12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Listas
;;
;;Se a pilha p está vazia, devolver false (não tem ás de copas)
;;Se o primeiro elemento da pilha p é às de copas, develver true
;;Senão, verificar se tem ás de copas no restante da pilha.
;;(define (AsCopas? p)
;;  (cond
    ;;[(empty? p) false]
  ;;  [(AsCopas? (first p) true)]
;;    [else (AsCopas? (rest p))]))

(define ÁsCopas 101)
(define DezOuros 210)
(define RainhaPaus 412)

(define (numero-da-carta uma-carta)
  (remainder uma-carta 100))

(define (naipe-da-carta uma-carta)
  (cond
    [(= (quotient uma-carta 100) 1) "Copas" ]
    [(= (quotient uma-carta 100) 2)"Ouros"]
    [(= (quotient uma-carta 100) 3)"Espadas"]
    [(= (quotient uma-carta 100) 4)"Paus"]))

(check-expect (numero-da-carta DezOuros) 10)
(check-expect (numero-da-carta ÁsCopas) 1)
(check-expect (naipe-da-carta DezOuros) 10)
(check-expect (naipe-da-carta ÁsCopas) 1)


  
