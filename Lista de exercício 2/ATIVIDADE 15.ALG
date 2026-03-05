Algoritmo "15"
// 
Var
n,i,a,b,c,p: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Quantos termos? : ")
leia(n)
a<-0
b<-1
para i de 1 ate n faca
escreval(a)
se a%2=0 entao
p<-p+1
fimse
c<-a+b
a<-b
b<-c
fimpara
escreval("Total de pares:",p)

Fimalgoritmo