Algoritmo "12"
// 
Var
// Seção de Declarações das variáveis 
idade, soma, maiores, menores, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma <- 0
maiores <- 0
menores <- 0
total <- 0

escreva("Digite a idade ou digite 0 para encerrar: ")
leia(idade)

enquanto idade <> 0 faca
soma <- soma + idade
total <- total + 1

se idade > 18 entao
maiores <- maiores + 1
senao
menores <- menores + 1
fimse

escreva("Digite a idade ou digite 0 para encerrar: ")
leia(idade)
fimenquanto

se total > 0 entao
 escreval("Média: ", soma / total)
 escreval("Maiores de 18: ", maiores)
 escreval("Percentual de menores: ", (menores / total) * 100, "%")
senao
 escreval("Nenhuma idade foi digitada")
fimse

Fimalgoritmo