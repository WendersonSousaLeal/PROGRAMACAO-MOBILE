Algoritmo "9"

Var
num, i : inteiro
primo : logico

Inicio
escreva("Digite um número inteiro maior que 1: ")
leia(num)

se num <= 1 entao
escreval("Número invalido, digite um número que seja maior que 1!")
senao

primo <- verdadeiro

para i de 2 ate num - 1 faca
se num mod i = 0 entao
primo <- falso
fimse
fimpara

se primo entao
escreval("O número", num, " é primo!")
senao
escreval("O número", num, " nao é primo...")
fimse
fimse

Fimalgoritmo