Algoritmo "3"
// 
Var
// Seção de Declarações das variáveis 
cont, n, maiorpositivo, menornegativo: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
maiorpositivo <- -1
menornegativo <- 1

para cont de 1 ate 15 faca
 escreva ("Digite o ",cont, "º número: ")
leia (n)

se (n > 0) e (n > maiorpositivo) entao
 maiorpositivo <- n
fimse

se (n < 0) e (n < menornegativo) entao
menornegativo <- n
fimse
fimpara

escreval("Maior positivo: ", maiorpositivo)
escreval("Menor negativo: ", menornegativo)

Fimalgoritmo