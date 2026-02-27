Algoritmo "ATIVIDADE 18"

Var
   salario, emprestimo, limite:real

Inicio

      Escreva("Digite o valor do salário: ")
      leia(salario)
      
      Escreva("Digite o valor do emprestimo: ")
      leia(emprestimo)
      

      limite <- salario * 0.30
      
      se(emprestimo <= limite)entao
      Escreval("Parabens!! Seu mprestimo foi aprovado!")
      senao
      Escreval("Emprestimo Reprovado!")
      
      fimse
      
      

Fimalgoritmo