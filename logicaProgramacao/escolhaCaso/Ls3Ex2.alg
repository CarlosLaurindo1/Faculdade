algoritmo "Rotatividade de placas"
// Fun??o : Confirmar o dia da semanaq ue o carro n?o pode circular na cidade
// Autor : Carlos Alessandro Laurindo
// Data : 16/03/2022
// Se??o de Declara??es
var
diaSemana : caractere
ultDigPlaca : inteiro

inicio
escreval("Informe o ?ltimo d?gito da placa do carro: ")
leia(ultDigPlaca)
escolha (ultDigPlaca)
caso 0,5
   diaSemana<-"segunda-feira"
caso 1,6
   diaSemana<-"ter?a-feira"
caso 2,7
   diaSemana<-"quarta-feira"
caso 3,8
   diaSemana<-"quinta-feira"
caso 4,9
   diaSemana<-"sexta-feira"
fimescolha
escreval("Este ve?culo n?o pode circular na ",diaSemana,".")
fimalgoritmo
