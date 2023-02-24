algoritmo "PARA FAÇA"
// Função : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Seção de Declarações

var
contadora,numero,impar,par,somaImpar,somaPar:inteiro

inicio
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe um número aleatório: ")
   leia(numero)
   se(numero mod 2 = 0) entao
      par<-par+1
      somaPar<-somaPar+numero
   senao
      impar<-impar+1
      somaImpar<-somaImpar+numero
   fimse
fimpara
escreval("Foram encontrados",par," números pares. Eles somam: ",somaPar)
escreval("Foram encontrados",impar," números impares. Eles somam: ",somaImpar)
fimalgoritmo
