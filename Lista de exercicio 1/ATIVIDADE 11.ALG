Algoritmo "ATIVIDADE 11"

Var
   primeira_nota, segunda_nota, terceira_nota, media : real

Inicio
   Escreval("Informe a primeira nota:")
   Leia(primeira_nota)

   Escreval("Informe a segunda nota:")
   Leia(segunda_nota)

   Escreval("Informe a terceira nota:")
   Leia(terceira_nota)

   media <- (primeira_nota + segunda_nota + terceira_nota) / 3

   se (media >= 7) entao
   Escreval("O estudante foi aprovado")
   senao
   Escreval("O estudante foi reprovado")
   Fimse
Fimalgoritmo