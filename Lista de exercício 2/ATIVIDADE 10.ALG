Algoritmo "10"
//
Var
// Seção de Declarações das variáveis
cidA, cidB : real
anos : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreva("Digite a população inicial da Cidade A: ")
leia(cidA)

escreva("Digite a população inicial da Cidade B: ")
leia(cidB)

anos <- 0

enquanto cidA <= cidB faca
cidA <- cidA * 1.03
cidB <- cidB * 1.015
anos <- anos + 1
fimenquanto

escreval("Cidade A ultrapassara Cidade B em", anos, " anos.")

Fimalgoritmo