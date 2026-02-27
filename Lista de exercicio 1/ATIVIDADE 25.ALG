
Algoritmo "ATIVIDADE 25"

Var

num, maior, menor: real
i : inteiro

Inicio

 escreva ("Digite um número: ")
leia (num)
maior <- num
menor <- num

para i de 2 ate 10 faca
 escreva ("Digite um número: ")
leia (num)
 
se num > maior entao
 maior <- num
fimse

se num < menor entao
 menor <- num
fimse
fimpara

escreval("Maior número é: ", maior)
escreval("Menor número é: ", menor)

Fimalgoritmo