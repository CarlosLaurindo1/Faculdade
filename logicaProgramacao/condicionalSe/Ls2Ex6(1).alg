algoritmo "Jogo dos algoritmos"
//Função : Realizar o balanço financeiro semestral, considerando o ganho bruto e os gastos da empresa.
// Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Seção das declarações

var
jornadaSemanal,jornadaMensal,totalTrabalhado,horasExtras,percentualHoraExtra : inteiro
valorHoraNormal,valorHoraExtra,salarioMensal,salarioComHE : real

inicio
jornadaSemanal<-40
jornadaMensal<-jornadaSemanal*4
escreva("Informe o total de horas trabalhadas no mês: ")
leia(totalTrabalhado)
horasExtras<-totalTrabalhado-jornadaMensal
se (horasExtras>0) entao
   escreval("Foram realizadas ",horasExtras," horas extras no mês!")
   senao
   escreval("Não houveram horas extras, este mês!")
fimse
escreva("O salário mensal é de: R$")
leia(salarioMensal)
valorHoraNormal<-salarioMensal/jornadaMensal
valorHoraExtra<-valorHoraNormal*50/100+valorHoraNormal
se (horasExtras>0) entao
   escreval("O valor de suas horas extras (",horasExtras,"h ) é de: R$",valorHoraExtra*horasExtras:2:2)
fimse
se (horasExtras>0) entao
   escreval("O valor total do salário é de: R$",salarioMensal+valorHoraExtra*horasExtras:2:2)
   senao
   escreval("O valor total do salário é de: R$",salarioMensal)
fimse


fimalgoritmo
