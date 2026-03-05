Algoritmo "5"
// 
Var
// Seção de Declarações das variáveis 
fat, n, cont: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita
escreva("Digite um número inteiro positivo: ")
leia(n)

se (n < 0) entao
escreval("O número tem que ser positivo, tente novamente...")
fimse
ate (n >= 0)

fat <- 1

se (n > 0) entao
para cont de 1 ate n faca
fat <- fat * cont
fimpara
fimse

escreval("O fatorial de", n, " é: ", fat)

Fimalgoritmo