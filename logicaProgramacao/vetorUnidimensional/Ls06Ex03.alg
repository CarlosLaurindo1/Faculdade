algoritmo "Exerc?cio 3"
// Fun??o :  Gabarito da prova
// Autor :  Carlos Alessandro Laurindo
// Data : 05/04/2022
// Se??o de Declara??es
//Fa?a um programa que pe?a o gabarito de uma prova com 10 quest?es para o aluno,
// sendo que ele deve informar a, b, c ou d como resposta para cada quest?o. Ao
//final, em um outro vetor, voc? pedir? ao professor que informe as respostas
//corretas dessa prova. Ao final, mostre na tela quantos pontos o aluno atingiu
//nessa prova, considerando que cada quest?o vale 1 ponto.
var
respostasAluno : vetor [1..10] de caractere
gabaritoProfessor : vetor [1..10] de caractere
contadora,nota: inteiro

inicio
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe a resposta da ",contadora,"? quest?o (dado pelo aluno (a, b, c, d): ")
   leia (respostasAluno[contadora])
   escolha(respostasAluno[contadora])
   caso "a","b","c","d"
   outrocaso
      escreval("Resposta informada ? inv?lida.")
   fimescolha
fimpara
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe a resposta correta da ",contadora,"? quest?o (a, b, c, d): ")
   leia (gabaritoProfessor[contadora])
   escolha(gabaritoProfessor[contadora])
   caso "a","b","c","d"
   outrocaso
      escreval("Resposta informada ? inv?lida.")
   fimescolha
   se (respostasAluno[contadora]=gabaritoProfessor[contadora]) entao
      nota<-nota+1
   fimse
fimpara
escreval("A nota da prova foi: ",nota)

fimalgoritmo
