algoritmo "Rotatividade de placas"
// Função : Confirmar o dia da semanaq ue o carro não pode circular na cidade
// Autor : Carlos Alessandro Laurindo
// Data : 16/03/2022
// Seção de Declarações
var
diaSemana : caractere
ultDigPlaca : inteiro

inicio
escreval("Informe o último dígito da placa do carro: ")
leia(ultDigPlaca)
escolha (ultDigPlaca)
caso 0,5
   diaSemana<-"segunda-feira"
caso 1,6
   diaSemana<-"terça-feira"
caso 2,7
   diaSemana<-"quarta-feira"
caso 3,8
   diaSemana<-"quinta-feira"
caso 4,9
   diaSemana<-"sexta-feira"
fimescolha
escreval("Este veículo não pode circular na ",diaSemana,".")
fimalgoritmo
