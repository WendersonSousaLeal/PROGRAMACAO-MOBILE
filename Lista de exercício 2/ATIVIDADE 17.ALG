Algoritmo "ATIVIDADE 17"

var
   cont: inteiro
   media: real
   aprov, recup, reprov: inteiro
   p_aprov, p_recup, p_repro: real
inicio
   aprov <- 0
   recup <- 0
   reprov <- 0

   para cont de 1 ate 20 faca
      escreva("Digite a média do aluno ", cont, ": ")
      leia(media)

      se (media >= 7) entao
         aprov <- aprov + 1
      senao
         se (media >= 5) entao
            recup <- recup + 1
         senao
            reprov <- reprov + 1
         fimse
      fimse
   fimpara
   p_aprov <- (aprov / 20) * 100
   p_recup <- (recup / 20) * 100
   p_repro <- (reprov / 20) * 100

   escreval("--- Resultado Final ---")
   escreval("Aprovados: ", p_aprov, "%")
   escreval("Recuperação: ", p_recup, "%")
   escreval("Reprovados: ", p_repro, "%")
fimalgoritmo
