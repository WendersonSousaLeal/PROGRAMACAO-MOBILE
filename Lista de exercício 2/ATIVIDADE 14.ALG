Algoritmo "14"
//
Var
// Seção de Declarações das variáveis
voto,c1,c2,c3,t:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreva("Voto(1,2,3 ou 0):")
leia(voto)

enquanto voto<>0 faca
se voto=1 entao
 c1<-c1+1
senao
se voto=2 entao
 c2<-c2+1
senao
se voto=3 entao
 c3<-c3+1
fimse
fimse
fimse

t<-t+1
 escreva("Voto(1,2,3 ou 0):")
 leia(voto)
fimenquanto
se t>0 entao

escreval("Candidato 1:",c1," - ",(c1/t)*100:3:1,"%")
escreval("Candidato 2:",c2," - ",(c2/t)*100:3:1,"%")
escreval("Candidato 3:",c3," - ",(c3/t)*100:3:1,"%")

se(c1>c2)e(c1>c3)entao
escreva("O candidato 1 é o vencedor!")
senao
se(c2>c1)e(c2>c3)entao
escreva("O candidato 2 é o vencedor!")
senao
se(c3>c1)e(c3>c2)entao
escreva("O candidato 3 é o vencedor!")
senao
escreva("Empate...")
fimse
fimse
fimse
fimse

fimalgoritmo