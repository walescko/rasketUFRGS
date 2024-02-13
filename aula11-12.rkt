;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula11-12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Listas
;;
;;Se a pilha p está vazia, devolver false (não tem ás de copas)
;;Se o primeiro elemento da pilha p é às de copas, develver true
;;Senão, verificar se tem ás de copas no restante da pilha.
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
(check-expect (naipe-da-carta DezOuros) "Ouros")
(check-expect (naipe-da-carta ÁsCopas) "Copas")
(check-expect (naipe-da-carta RainhaPaus) "Paus")
(check-expect (naipe-da-carta 312) "Espadas")
(check-expect (naipe-da-carta 211) "Ouros")

(define (AsDeCopas? c)
  (and (= (numero-da-carta c) 1)
       (string=? (naipe-da-carta c) "Copas")))

(check-expect (AsDeCopas? DezOuros) false)
(check-expect (AsDeCopas? ÁsCopas) true)
  
;; Carta = {101,102,103,104,105,106,107,108,109,110,111,112,113, 
;;          201,202,203,204,205,206,207,208,209,210,211,212,213,
;;          301,302,303,304,305,306,307,308,309,310,311,312,313,
;;          401,402,403,404,405,406,407,408,409,410,411,412,413}

(define PILHA1 (cons RainhaPaus
                     (cons DezOuros
                           (cons ÁsCopas empty))))


(define PILHA2 (cons RainhaPaus
                     (cons DezOuros
                           (cons RainhaPaus empty))))

(define (temÁsCopas? p)
  (cond
    [(empty? p) false]
    [(AsDeCopas? (first p)) true]
    [else (temÁsCopas? (rest p))]))

(check-expect (temÁsCopas? PILHA1) true)
(check-expect (temÁsCopas? PILHA2) false)






