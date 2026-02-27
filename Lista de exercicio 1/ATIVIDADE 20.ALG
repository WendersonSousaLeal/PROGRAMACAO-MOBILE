Algoritmo "ATIVIDADE 20"

Var

PESO, ALTURA : real
IMC : REAL
Inicio

          Escreval("Digite seu Peso: ")
   leia(PESO)
   Escreval("Digite sua altura: ")
   leia(ALTURA)

    IMC <- PESO/(ALTURA * 2)

    Se( IMC <= 18.7)entao
    Escreval("Você estã abaixo do peso")
    senao
    se (IMC <= 24.9) entao
    Escreval("Você está no peso ideal")
    senao
    se(IMC <= 29.9) entao
    Escreval("Você está sobrepeso")
    senao
    se(IMC >= 30.9) entao
    Escreval("VOCÊ PRECISA DE AJUDA!!")

    fimse
    fimse
    fimse
    fimse

Fimalgoritmo