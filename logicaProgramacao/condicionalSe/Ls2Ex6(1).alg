algoritmo "Jogo dos algoritmos"
//Fun??o : Realizar o balan?o financeiro semestral, considerando o ganho bruto e os gastos da empresa.
// Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Se??o das declara??es

var
jornadaSemanal,jornadaMensal,totalTrabalhado,horasExtras,percentualHoraExtra : inteiro
valorHoraNormal,valorHoraExtra,salarioMensal,salarioComHE : real

inicio
jornadaSemanal<-40
jornadaMensal<-jornadaSemanal*4
escreva("Informe o total de horas trabalhadas no m?s: ")
leia(totalTrabalhado)
horasExtras<-totalTrabalhado-jornadaMensal
se (horasExtras>0) entao
   escreval("Foram realizadas ",horasExtras," horas extras no m?s!")
   senao
   escreval("N?o houveram horas extras, este m?s!")
fimse
escreva("O sal?rio mensal ? de: R$")
leia(salarioMensal)
valorHoraNormal<-salarioMensal/jornadaMensal
valorHoraExtra<-valorHoraNormal*50/100+valorHoraNormal
se (horasExtras>0) entao
   escreval("O valor de suas horas extras (",horasExtras,"h ) ? de: R$",valorHoraExtra*horasExtras:2:2)
fimse
se (horasExtras>0) entao
   escreval("O valor total do sal?rio ? de: R$",salarioMensal+valorHoraExtra*horasExtras:2:2)
   senao
   escreval("O valor total do sal?rio ? de: R$",salarioMensal)
fimse


fimalgoritmo
