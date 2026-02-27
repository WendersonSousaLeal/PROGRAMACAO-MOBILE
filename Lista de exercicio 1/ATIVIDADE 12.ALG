Algoritmo "ATIVIDADE 12"

Var

   Idade : inteiro


Inicio

      Escreva("Quantos anos você tem? ")
      Leia(Idade)
      
      se (Idade <= 12)entao
      Escreval("Você é Criança")
      senao
          se (Idade >= 13) e (Idade <= 17)entao
          Escreval("Você é Adoslecente")
           senao
             se (Idade >= 18) e (Idade <= 59)entao
               Escreval ("Você é Adulto")
                senao
                Escreval("Você é idoso")
              Fimse
            Fimse
          Fimse

Fimalgoritmo