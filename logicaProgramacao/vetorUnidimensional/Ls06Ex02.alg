algoritmo "atividade 1"
// Função : Funcionamento vetorial
// Autor : Carlos Alessandro Laurindo
// Data : 05/04/2022
// Seção de Declarações
//Faça um programa que alimente um vetor de 5 posições com números inteiros.
//Execute,  utilizando a estrutura de repetição para-faça. Ao final, mostre o vetor preenchido em tela.
var
numeros : vetor [1..5] de inteiro
contadora: inteiro
inicio
para contadora de 1 ate 5 passo 1 faca
   escreva("Informe o",contadora,"º número: ")
   leia(numeros[contadora])
fimpara
Escreval("Foram informados os seguintes números: ")
para contadora de 1 ate 5 passo 1 faca
   escreval(contadora,"º: ",numeros[contadora],".")
fimpara
fimalgoritmo
