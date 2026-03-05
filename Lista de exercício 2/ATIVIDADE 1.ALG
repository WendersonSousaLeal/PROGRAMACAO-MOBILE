Algoritmo "1"
// 
Var
// Seção de Declarações das variáveis 
cont, n, somapar, contimpar: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
somapar <- 0
contimpar <- 0

para cont de 1 ate 20 faca
 escreva("Digite o ", cont, "º número: ")
leia(n)

se (n % 2 = 0) entao
 somapar <- somapar + n
senao
 contimpar <- contimpar + 1
fimse
fimpara

escreval("A soma dos números pares digitados é: ", somapar)
escreval("A quantidade de números ímpares é: ", contimpar)

Fimalgoritmo