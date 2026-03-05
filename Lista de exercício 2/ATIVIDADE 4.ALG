Algoritmo "4"
// 
Var
// Seção de Declarações das variáveis 
n, cont, intervalovint, intervalocin, intervaloma: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
intervalovint <- 0
intervalocin<- 0
intervaloma<- 0

para cont de 1 ate 30 faca
 escreva("Digite o ", cont, "º número: ")
leia(n)

se (n>=0) e (n<=25) entao
intervalovint<- intervalovint+1
senao
se (n>=26) e (n<=50) entao
intervalocin<- intervalocin+1
senao
se (n>50) entao
intervaloma<- intervaloma+1

fimse
fimse
fimse
fimpara

escreval("Números entre 0 e 25: ", intervalovint)
escreval("Números entre 26 e 50: ", intervalocin)
escreval("Números acima de 50: ", intervaloma)

Fimalgoritmo