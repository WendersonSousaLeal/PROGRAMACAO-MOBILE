Algoritmo "8"
// 
Var
// Seção de Declarações das variáveis 
venda, totalbon, maiorven : real
cont : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
totalbon<- 0
maiorven<- 0

para cont de 1 ate 10 faca
escreva("Venda ", cont, ": ")
leia(venda)

se venda>=5000 entao
totalbon <- totalbon + venda * 0.10
senao
totalbon <- totalbon + venda * 0.05
fimse

se venda > maiorven entao
maiorven <- venda
fimse
fimpara

escreval("Total bônus: ", totalbon)
escreval("Maior venda: ", maiorven)

Fimalgoritmo