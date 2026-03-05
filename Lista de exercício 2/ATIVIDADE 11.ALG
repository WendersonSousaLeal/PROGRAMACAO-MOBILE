Algoritmo "11"
//
Var
// Seção de Declarações das variáveis
soma, valor, desconto, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
soma <- 0
total <- 0

escreva("Digite o valor da compra (0 para encerrar): ")
leia(valor)

enquanto valor <> 0 faça
se valor > 100 então
desconto <- valor * 0.05
valor <- valor - desconto
total <- total + desconto
fimse
soma <- soma + valor
escreva("Digite o valor da compra (0 para encerrar): ")
leia(valor)
fimenquanto

escreval("Faturamento bruto: ", soma)
escreval("Total de descontos aplicados: ", total)

Fimalgoritmo