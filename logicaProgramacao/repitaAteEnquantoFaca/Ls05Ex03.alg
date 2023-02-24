algoritmo "Atividade 3"
// Função : Quantidade de provas
// Autor :
// Data : 30/03/2022
// Seção de Declarações
//Faça um algoritmo que solicite ao usuário a nota que ele tirou em uma prova.
//Caso a nota seja menor do que 7, permita que ele faça quantas provas de recuperação
//forem necessárias até que ele atinja no mínimo a nota 7. Para isso, pergunte ao
//usuário quanto ele tirou na prova de recuperação e enquanto não informar 7 ou mais
//continua a repetição. Ao fim do algoritmo, indique se o estudante precisou de recuperação, e se sim, quantas provas precisou fazer.
var
quantidadeProvas:inteiro
notaProva,notaRecuperacao:real
inicio
repita
   ESCREVA("Informe a nota que você tirou na prova: ")
   leia(notaProva)
   quantidadeProvas<-quantidadeProvas+1
ate(notaProva>=7)
escreval("Sua nota foi: ",notaProva)
escreval("Foi necerrário realizar",quantidadeProvas," provas.")


fimalgoritmo

