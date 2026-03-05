Algoritmo "13"
// 
Var
// Seção de Declarações das variáveis 
total, maior, venda, diamaior, dia: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
total <- 0
maior <- 0
diamaior <- 0

para dia de 1 até 30 faça
escreva("Dia ", dia, ": ")
leia(venda)

total <- total + venda

se venda > maior então
maior <- venda
diamaior <- dia
fimse

se venda < 5 então
escreval("Alerta!! estoque baixo no dia ", dia)
fimse
fimpara

escreval("Total vendido: ", total)
escreval("Maior venda no dia ", diamaior, " com ", maior, " unidades")

Fimalgoritmo