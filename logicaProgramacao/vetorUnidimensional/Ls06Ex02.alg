algoritmo "atividade 1"
// Fun??o : Funcionamento vetorial
// Autor : Carlos Alessandro Laurindo
// Data : 05/04/2022
// Se??o de Declara??es
//Fa?a um programa que alimente um vetor de 5 posi??es com n?meros inteiros.
//Execute,  utilizando a estrutura de repeti??o para-fa?a. Ao final, mostre o vetor preenchido em tela.
var
numeros : vetor [1..5] de inteiro
contadora: inteiro
inicio
para contadora de 1 ate 5 passo 1 faca
   escreva("Informe o",contadora,"? n?mero: ")
   leia(numeros[contadora])
fimpara
Escreval("Foram informados os seguintes n?meros: ")
para contadora de 1 ate 5 passo 1 faca
   escreval(contadora,"?: ",numeros[contadora],".")
fimpara
fimalgoritmo
