algoritmo "Atividade 3"
// Fun??o : Quantidade de provas
// Autor :
// Data : 30/03/2022
// Se??o de Declara??es
//Fa?a um algoritmo que solicite ao usu?rio a nota que ele tirou em uma prova.
//Caso a nota seja menor do que 7, permita que ele fa?a quantas provas de recupera??o
//forem necess?rias at? que ele atinja no m?nimo a nota 7. Para isso, pergunte ao
//usu?rio quanto ele tirou na prova de recupera??o e enquanto n?o informar 7 ou mais
//continua a repeti??o. Ao fim do algoritmo, indique se o estudante precisou de recupera??o, e se sim, quantas provas precisou fazer.
var
quantidadeProvas:inteiro
notaProva,notaRecuperacao:real
inicio
repita
   ESCREVA("Informe a nota que voc? tirou na prova: ")
   leia(notaProva)
   quantidadeProvas<-quantidadeProvas+1
ate(notaProva>=7)
escreval("Sua nota foi: ",notaProva)
escreval("Foi necerr?rio realizar",quantidadeProvas," provas.")


fimalgoritmo

