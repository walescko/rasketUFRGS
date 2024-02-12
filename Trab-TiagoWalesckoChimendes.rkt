;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Trab-TiagoWalesckoChimendes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Nome: TIAGO WALESCKO CHIMENDES    matrícula 97641
;;
;; Exercícios e avaliação:
;; 1) Escrever um programa que imprima a expressão "hello world" e logo após o seu nome armazenado em uma variável.
;;Solução:
;;Entrada: String -> Saída: String

(define name "Japir Adão") ;; Declaração da variável name com o valor
(define text "Hello World, ")
(define (salutation name)
  (string-append "Hello World, " name "!")) ;; Concatenando o texto com o nome

(define printOnScreen (salutation name)) ;; Chamada da função

printOnScreen

;;2) Escreva um programa que mostra a soma de dois números
;;Entrada: Number Number -> Saída: Number
(define (soma number1 number2)
  (+ number1 number2))

(soma 2 4)
(check-expect (soma 3 4) 7)
(check-expect (soma 4 56) 60)

  






