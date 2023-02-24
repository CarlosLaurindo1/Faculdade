algoritmo "Valor salário com horas extras"
//Função : Realizar o balanço financeiro semestral, considerando o ganho bruto e os gastos da empresa.
// Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Seção das declarações

var
   jornadaSemanal,jornadaMensal,totalTrabalhado,horasExtras,percentualHoraExtra : inteiro
   valorHoraNormal,valorHoraExtra,salarioHora,salarioComHE,salarioMensal,totalHoraExtra : real

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
   escreva("O salário hora é de: R$")
   leia(salarioHora)
   valorHoraExtra<-salarioHora*50/100+salarioHora
   salarioMensal<-salarioHora*jornadaMensal
   totalHoraExtra<-valorHoraExtra*horasExtras
   salarioComHE<-salarioMensal+totalHoraExtra
   se (horasExtras>0) entao
      escreval("O valor de suas horas extras (",horasExtras,"h ) é de: R$",totalHoraExtra:2:2,". O total do salário com Horas Extras é de R$: ", salarioComHE:2:2,".")
   senao
      escreval("O valor total do salário é de: R$",salarioMensal:2:2,".")
   fimse


fimalgoritmo
