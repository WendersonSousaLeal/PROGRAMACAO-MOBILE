Algoritmo "ATIVIDADE 24"
// Disciplina   : [Linguagem e Lógica de Programação]

Var
// Seção de Declarações das variáveis 
num, soma: real
contador: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva ("Digite um número: ")
leia (num)

soma<- 0
contador<- 0

enquanto num <> 0 faca
 soma <- soma + num
 contador <- contador + 1
 leia (num)
 fimenquanto
 
 escreval ("Quantidade: ", contador)
 escreval ("Soma dos números: ", soma)

Fimalgoritmo