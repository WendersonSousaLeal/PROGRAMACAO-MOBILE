Algoritmo "6"
// 
Var
// Seção de Declarações das variáveis 
num, soma, cont, media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma<- 0
cont<- 0

escreva("Digite um número: ")
leia(num)

enquanto (num >= 0) faca
soma <- soma + num
cont <- cont + 1
escreva("Digite um número:")
leia(num)
fimenquanto

se (cont > 0) entao
media <- soma / cont
escreval("Soma:", soma)
escreval("Média:", media)
senao
escreval("Tem que ser positivo!")
fimse

Fimalgoritmo