;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio-pratico3-template) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Nome:

;; ============================
;; DEFINIÇÕES DE TIPOS DE DADOS
;; ============================

;; ==============
;; TIPODEFORMA
;; ==============
;; Um TipoDeForma pode ser:
;; 1. "triângulo",
;; 2. "retângulo",  ou
;; 3. "círculo".

;; ==============
;; FORMA
;; ==============
;; Uma Forma é uma lista de elementos na qual
;; o primeiro elemento é do tipo TipoDeForma, e representa o tipo da forma;
;; o segundo elemento é do tipo String, e representa a cor da forma;
;; os outros elementos representam as medidas da forma: 
		;; se a forma for um triângulo, o terceiro elemento representa o tamanho do lado;
		;; se a forma for um círculo, o terceiro elemento representa o raio;
		;; se a forma for um retângulo, o terceiro elemento representa a largura e o quarto a altura.

;; Exemplos de constantes do tipo Forma:
(define T1 (cons "triângulo" (cons "red"    (cons 40 empty))))
(define C1 (cons "círculo"   (cons "blue"   (cons 30 empty))))		
(define R1 (cons "retângulo" (cons "green"  (cons 40 (cons 20 empty)))))
(define T2 (cons "triângulo" (cons "red"    (cons 50 empty))))
(define C2 (cons "círculo"   (cons "red"    (cons 20 empty))))		
(define R2 (cons "retângulo" (cons "blue"   (cons 50 (cons 30 empty)))))
(define T3 (cons "triângulo" (cons "green"  (cons 30 empty))))
(define C3 (cons "círculo"   (cons "orange" (cons 40 empty))))		
(define R3 (cons "retângulo" (cons "red"    (cons 30 (cons 30 empty)))))

;; ==============
;; LISTADEFORMAS
;; ==============
;; Uma ListaDeFormas é
;; 1. vazia (empty), ou
;; 2. (cons f lf), onde
;;         f : Forma e
;;         lf: ListaDeFormas

;; Exemplos de constantes do tipo ListaDeFormas:
(define LF1 (cons T1 (cons C1 (cons R1 empty))))
(define LF2 (cons C1 (cons C2 empty)))
(define LF3 (cons T1 (cons T2 (cons R3 (cons C2 (cons C3 (cons T3 empty)))))))

;; =====================
;; DEFINIÇÕES DE FUNÇÕES
;; =====================
;; é-círculo? : Forma -> Booleano
;; Dada uma forma, diz se ela é um círculo.
;; Exemplos:
;;      (é-círculo? T1) = false
;;      (é-círculo? C1) = true
(define (é-círculo? vF) ;; Dada a forma vF
  ;; esta forma é um círculo se primeiro elemento da lista que define vF for a palavra "círculo"
  (string=? (first vF) "círculo"))

;; é-triângulo? : Forma -> Booleano
;; Dada uma forma, diz se ela é um triângulo.
;; Exemplos:
;;      (é-triângulo? T1) = true
;;      (é-triângulo? C1) = false
(define (é-triângulo? vF) ;; Dada a forma vF
  ;; esta forma é um triângulo se primeiro elemento da lista que define vF for a palavra "triângulo"
  (string=? (first vF) "triângulo"))

;; é-retângulo? : Forma -> Booleano
;; Dada uma forma, diz se ela é um retângulo.
;; Exemplos:
;;      (é-retângulo? T1) = false
;;      (é-retângulo? R1) = true
(define (é-retângulo? vF) ;; Dada a forma vF
  ;; esta forma é um retângulo se primeiro elemento da lista que define vF for a palavra "retângulo"
  (string=? (first vF) "retângulo"))

;; tipo: Forma -> Número
;; Dada uma forma, devolve seu tipo.
;; Exemplos:
;;      (tipo T1) = "triângulo"
;;      (tipo R1) = "retângulo"
(define (tipo vF) ;; Dada a forma vF
  ;; seu tipo é o primeiro elemento da lista que define vF 
  (first vF))

;; cor: Forma -> Número
;; Dada uma forma, devolve sua cor.
;; Exemplos:
;;      (cor T1) = "red"
;;      (cor R1) = "green"
(define (cor vF) ;; Dada a forma vF
  ;; sua cor é o segundo elemento da lista que define vF, ou seja, o primeiro elemento do resto de vF 
  (first (rest vF)))

;; lado: Forma -> Número
;; Dada uma forma que é um triângulo, devolve seu lado.
;; Exemplos:
;;      (lado T1) = 40
(define (lado vT) ;; Dado o triângulo vT
  ;; seu lado é o terceiro elemento da lista que define vT 
  (first (rest (rest vT))))

;; raio: Forma -> Número
;; Dada uma forma que é um círculo, devolve seu raio.
;; Exemplos:
;;      (raio C1) = 30
(define (raio vC) ;; Dado o círculo vC
  ;; seu raio é o terceiro elemento da lista que define vC 
  (first (rest (rest vC))))

;; largura: Forma -> Número
;; Dada uma forma que é um retângulo, devolve sua largura.
;; Exemplos:
;;      (largura R1) = 40
(define (largura vR) ;; Dado o retângulo vR
  ;; sua largura é o terceiro elemento da lista que define vR 
  (first (rest (rest vR))))

;; altura: Forma -> Número
;; Dada uma forma que é um retângulo, devolve sua altura.
;; Exemplos:
;;      (altura R1) = 20
(define (altura vR) ;; Dado o retângulo vR
  ;; sua altura é o quarto elemento da lista que define vR 
  (first (rest (rest (rest vR)))))

;; Não modifique nada até este ponto!!!
;; A partir daqui estão os exercícios a serem resolvidos.

;;===============================================================
;; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
;;===============================================================
;; ========================
;; FUNÇÃO DESENHA-FORMA
;; ========================
;; desenha-forma: Forma -> Imagem
;; Dada uma forma, gera uma imagem desta forma.
;; Exemplos:
;;      (desenha-forma C1) gera a imagem de um círculo azul com raio 30.
;(define (desenha-forma vF) ;; Dada uma forma vF
;  (cond
;        ;; se a forma for um triângulo, desenhar este triângulo
;        [(é-triângulo? vF) (triangle (lado vF) "solid" (cor vF))]
;         ;; se a forma for um retângulo, desenhar este retângulo
;        [(é-retângulo? vF) (rectangle ... ... "solid" ...)]       
;         ;; se a forma for um círculo, desenhar este círculo
;        [(...   vF) (circle   ... "solid" ...)])) 
;
;;; Chamadas da função desenha-forma:
;(desenha-forma C1)
;(desenha-forma T1)
;(desenha-forma R1)

;;===============================================================
;; 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
;;===============================================================
;; ========================
;; FUNÇÃO DESENHA-FORMAS
;; ========================
;; desenha-formas: ListaDeFormas -> ...
;; Dada uma lista de formaa, gera uma imagem das formas desta lista, lado a lado.
;; Exemplos:
;;      (desenha-formas LF1) gera a imagem do triângulo T1, círculo C1 e retângulo R1.
;(define  (desenha-formas vLF) ;; Dada uma lista de formas vLF
;  (cond
;       ;; se a lista vLF estiver vazia, devolver a imagem vazia
;       [(empty? vLF) empty-image]
;       ;; senão, colocar lado a lado
;       [else (...
;                 ;; a imagem da primeira forma da lista vLF e
;                 (desenha-forma (... vLF))
;                 ;; a imagem do resto das formas da lista vLF
;                 (desenha-formas (... vLF)))]))
;
;;; Chamadas da função desenha-formas:
;(desenha-formas LF1)
;(desenha-formas LF2)
;(desenha-formas LF3)
;;===============================================================
;; 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
;;===============================================================
;; ========================
;; FUNÇÃO FILTRA-TRIÂNGULOS:
;; ========================
;; filtra-triângulos: ... -> ...
;; Dada uma lista de formas, devolve as formas desta listaque são triâgulos.
;; Exemplos:
;;      (filtra-triângulos empty) = empty
;;      (filtra-triângulos LF1) = (cons T1 empty)

;(define  (filtra-triângulos vLF) ;; Dada uma lista de formas vLF
;  (cond
;       ;; se a lista vLF estiver vazia, devolver a lista vazia
;       [... ...]
;       ;; se o primeiro elemento da lista vLF for um triângulo,      
;       [(é-triângulo? (...))
;          ;; montar uma lista com este triângulo e com os triângulos do resto da lista vLF
;          (... (first vLF) (filtra-triângulos (... vLF)))]
;       ;; senão, devolver os triângulos do resto da lista vLF
;       [else (filtra-triângulos ...)]))
;
;;; Testes:
;(check-expect (filtra-triângulos empty)  empty)
;(check-expect (filtra-triângulos LF1)    (cons T1 empty))
;(check-expect (filtra-triângulos LF2)    empty)
;(check-expect (filtra-triângulos LF3)    (cons T1 (cons T2 (cons T3 empty))))

;;===============================================================
;; 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
;;===============================================================
;; ========================
;; FUNÇÃO FILTRA-FORMAS:
;; ========================
;; filtra-formas: ... ... -> ...
;; Dada uma lista de formas e um tipo de forma, devolve as formas desta listaque são deste tipo.
;; Exemplos:
;;      (filtra-formas empty "triângulo") = empty
;;      (filtra-formas LF1 "triângulo")   = (cons T1 empty)
;;      (filtra-formas LF1 "círculo")     = (cons C1 empty)
;(define  (filtra-formas vLF vTF) ;; Dada uma lista de formas vLF e um tipo de forma vTF
;  (cond
;       ;; se a lista vLF ..., devolver ...
;       [... ...]
;       ;; se o primeiro elemento da lista vLF ....,      
;       [(string=? ... ...)
;          ;; montar uma lista com esta forma e com as formas do resto da lista vLF do tipo vTF
;          (... ... ...)]
;       ;; senão, ...
;       [else (...]))
;
;;; Testes:
;(check-expect (filtra-formas empty "círculo")  empty)
;(check-expect (filtra-formas LF1 "triângulo")  (cons T1 empty))
;(check-expect (filtra-formas LF1 "círculo")    (cons C1 empty))
;(check-expect (filtra-formas LF2 "triângulo")   empty)
;(check-expect (filtra-formas LF3 "triângulo")  (cons T1 (cons T2 (cons T3 empty))))
;(check-expect (filtra-formas LF3 "retângulo")  (cons R3 empty))


;;===============================================================
;; 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
;;===============================================================
;; ==================================
;; FUNÇÃO DESENHA-FORMAS-SELECIONADAS:
;; ==================================
;; desenha-formas-selecionadas: ListaDeFormas TipoDeForma -> Imagem
;; Dada uma lista de formas e um tipo de forma, devolve a imagem das formas desta lista que são deste tipo, lado a lado.
;; Exemplos:
;;      (desenha-formas-selecionadas empty "triângulo") gera a imagem vazia
;;      (desenha-formas-selecionadas LF1 "triângulo")   gera a imagem do triângulo T1
;;      (desenha-formas-selecionadas LF3 "triângulo")   gera a imagem dos triângulos T1, T2 e T3
;(define  (desenha-formas-selecionadas vLF vTF) ;; Dada uma lista de formas vLF e um tipo de forma vTF
;  ;; gera uma imagem das formas da lista vLF que são do tipo vTF
;      ...)
;
;;; Chamadas da função desenha-formas-selecionadas:
;(desenha-formas-selecionadas empty "círculo")
;(desenha-formas-selecionadas LF2 "triângulo")
;(desenha-formas-selecionadas LF2 "círculo")
;(desenha-formas-selecionadas LF3 "triângulo")

;;===============================================================
;; 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6
;;===============================================================
;; ========================
;; FUNÇÃO CONTA-FORMAS:
;; ========================
;; conta-formas: ... -> ...
;; Dada uma lista de formas e um tipo de forma, conta quantas formas desta lista são deste tipo.
;; Exemplos:
;;      (conta-formas empty "triângulo") = ...
;;      (conta-formas LF1 "triângulo")   = ...
;;      (conta-formas LF1 "círculo")     = ...
;(define  (conta-formas vLF vTF) ;; Dada uma lista de formas vLF e um tipo de forma vTF
;  (cond
;       ;; se ..., devolver ...
;       [... ...]
;       ;; se o primeiro elemento da lista vLF...,      
;       [...
;          ;; somar um ao ... 
;          (... ... ...]
;       ;; senão, ...
;       [else ...]))
;
;;; Testes:
;(check-expect (conta-formas empty "círculo")  0)
;(check-expect (conta-formas LF1 "triângulo")  1)
;(check-expect (conta-formas LF1 "círculo")    1)
;(check-expect (conta-formas LF2 "triângulo")  0)
;(check-expect (conta-formas LF3 "triângulo")  3)
;(check-expect (conta-formas LF3 "retângulo")  1)