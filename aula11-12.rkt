;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula11-12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Listas
;;
;;Se a pilha p está vazia, devolver false (não tem ás de copas)
;;Se o primeiro elemento da pilha p é às de copas, develver true
;;Senão, verificar se tem ás de copas no restante da pilha.
(define (AsCopas? p)
  (cond
    [(empty? p) false]
    [(AsCopas? (first p) true)]
    [else (AsCopas? (rest p))]))

