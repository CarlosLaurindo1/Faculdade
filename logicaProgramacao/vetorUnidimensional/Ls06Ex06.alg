algoritmo "Atividade 6"
// Fun??o : Cadastrar vetores diferentes, e apresentar o resultado de um vetor com o outro
// Autor : Carlos Alessandro Laurindo
// Data : 08/04/2022
// Se??o de Declara??es
//Fa?a um programa que pe?a 5 n?meros em um vetor, mais 05 n?meros em outro
//vetor e armazene a soma dos elementos de um vetor com outro em um terceiro.
//Ex.: vetorA[1] + vetorB[1]. Mostre o vetor soma ao final.
var
numeroInicial,numeroFinal,resultadoAdicao: vetor [1..5] de inteiro
contadora: inteiro
inicio
para contadora de 1 ate 5 passo 1 faca
   escreva("Informe o",contadora,"? n?mero, da primeira lista: ")
   leia(numeroInicial[contadora])
   escreva("Informe o",contadora,"? n?mero, da segunda lista: ")
   leia(numeroFinal[contadora])
   resultadoAdicao[contadora]<-numeroInicial[contadora]+numeroFinal[contadora]
fimpara
para contadora de 1 ate 5 passo 1 faca
   escreval("A soma dos ",contadora,"? n?meros ?: ",resultadoAdicao[contadora],".")
fimpara
fimalgoritmo
