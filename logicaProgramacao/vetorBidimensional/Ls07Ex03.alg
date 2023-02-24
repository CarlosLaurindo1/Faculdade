algoritmo "Atividade 3"
// Função : Somar os valores da matriz
// Autor : Carlos Alessandro Laurindo
// Data : 13/04/2022
// Seção de Declarações
//Faça um programa que peça os valores de uma matriz 2x3 e ao final, mostre na tela o total da soma de todos os elementos dessa matriz.
var
matriz: vetor [1..2,1..3] de inteiro
somaNumeros,l,c: inteiro
inicio
para l de 1 ate 2 passo 1 faca
   para c de 1 ate 3 passo 1 faca
      escreva("Informe um numero inteiro: ")
      leia(matriz[l,c])
      somaNumeros<-somaNumeros+(matriz[l,c])
   fimpara
fimpara
escreval("Os números informados foram: ")
para l de 1 ate 2 passo 1 faca
   para c de 1 ate 3 passo 1 faca
      escreva(matriz[l,c])
   fimpara
   escreval()
fimpara
escreva("A soma dos números informados é: ",somaNumeros)
fimalgoritmo
