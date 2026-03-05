Algoritmo "2"
// 
Var
// Seção de Declarações das variáveis 
nota, soma, media: real
cont: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma <- 0

para cont de 1 ate 5 faca
escreva ("Digite sua ", cont, "º nota: ")
leia (nota)

enquanto (nota<0) ou (nota>10) faca
 escreval ("Nota inválida, apenas de 1 a 10!")
 escreva ("Digite sua nota novamente: ")
leia (nota)
fimenquanto

soma <- soma+nota
fimpara

media <- soma/5

escreva ("A média das notas são: ",media)

Fimalgoritmo