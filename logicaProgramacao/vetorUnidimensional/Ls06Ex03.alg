algoritmo "Exercício 3"
// Função :  Gabarito da prova
// Autor :  Carlos Alessandro Laurindo
// Data : 05/04/2022
// Seção de Declarações
//Faça um programa que peça o gabarito de uma prova com 10 questões para o aluno,
// sendo que ele deve informar a, b, c ou d como resposta para cada questão. Ao
//final, em um outro vetor, você pedirá ao professor que informe as respostas
//corretas dessa prova. Ao final, mostre na tela quantos pontos o aluno atingiu
//nessa prova, considerando que cada questão vale 1 ponto.
var
respostasAluno : vetor [1..10] de caractere
gabaritoProfessor : vetor [1..10] de caractere
contadora,nota: inteiro

inicio
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe a resposta da ",contadora,"ª questão (dado pelo aluno (a, b, c, d): ")
   leia (respostasAluno[contadora])
   escolha(respostasAluno[contadora])
   caso "a","b","c","d"
   outrocaso
      escreval("Resposta informada é inválida.")
   fimescolha
fimpara
para contadora de 1 ate 10 passo 1 faca
   escreva("Informe a resposta correta da ",contadora,"ª questão (a, b, c, d): ")
   leia (gabaritoProfessor[contadora])
   escolha(gabaritoProfessor[contadora])
   caso "a","b","c","d"
   outrocaso
      escreval("Resposta informada é inválida.")
   fimescolha
   se (respostasAluno[contadora]=gabaritoProfessor[contadora]) entao
      nota<-nota+1
   fimse
fimpara
escreval("A nota da prova foi: ",nota)

fimalgoritmo
