Algoritmo "ATIVIDADE 20"
Var
   valor, resto, i, qtd_notas: inteiro
   notas: vetor[1..7] de inteiro

Inicio
   notas[1] <- 100
   notas[2] <- 50
   notas[3] <- 20
   notas[4] <- 10
   notas[5] <- 5
   notas[6] <- 2
   notas[7] <- 1


   repita
      escreva("Digite o valor do saque (inteiro positivo): ")
      leia(valor)
      se valor <= 0 entao
         escreval("Erro: O valor deve ser maior que zero.")
      fimse
   ate valor > 0

   resto <- valor

   escreval("Cédulas entregues:")


   para i de 1 ate 7 faca
      se resto >= notas[i] entao
         qtd_notas <- resto \ notas[i]
         resto <- resto % notas[i]
         escreval(qtd_notas, " nota(s) de R$ ", notas[i])
      fimse
   fimpara


Fimalgoritmo
