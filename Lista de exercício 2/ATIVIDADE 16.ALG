Algoritmo "16"
// 
Var
// Seção de Declarações das variáveis 
valoremprestimo, taxamensal, taxadecimal, montantefinal, totaljuros: real
numeroparcelas: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("valor do emprestimo: ")
leia(valoremprestimo)

escreva("taxa de juros mensal: ")
leia(taxamensal)

escreva("numero de parcelas: ")
leia(numeroparcelas)

taxadecimal <- taxamensal / 100

montantefinal <- valoremprestimo * (1 + taxadecimal) ^ numeroparcelas

totaljuros <- montantefinal - valoremprestimo

escreval("valor final pago: ", montantefinal)
escreval("total de juros pagos: ", totaljuros)
escreval("valor de cada parcela: ", (montantefinal/numeroparcelas))

Fimalgoritmo