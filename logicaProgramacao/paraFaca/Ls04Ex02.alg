algoritmo "PARA FA?A"
// Fun??o : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Se??o de Declara??es

var
contadora,numero,impar,par,somaImpar,somaPar:inteiro

inicio
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe um n?mero aleat?rio: ")
   leia(numero)
   se(numero mod 2 = 0) entao
      par<-par+1
      somaPar<-somaPar+numero
   senao
      impar<-impar+1
      somaImpar<-somaImpar+numero
   fimse
fimpara
escreval("Foram encontrados",par," n?meros pares. Eles somam: ",somaPar)
escreval("Foram encontrados",impar," n?meros impares. Eles somam: ",somaImpar)
fimalgoritmo
