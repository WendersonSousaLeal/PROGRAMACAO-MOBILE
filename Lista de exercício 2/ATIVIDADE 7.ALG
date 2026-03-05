Algoritmo "7"
// 
Var
// Seção de Declarações das variáveis 
num, limite, i, resultado : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite algum número para tabuada: ")
leia(num)

escreva("Qual seria o limite final? : ")
leia(limite)

escreval("Tabuada do ", num, " até o", limite)

para i de 1 ate limite faca
resultado <- num * i
escreval(num, " x", i, " =", resultado)
fimpara

Fimalgoritmo