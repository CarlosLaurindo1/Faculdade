algoritmo "PARA FA?A"
// Fun??o : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Se??o de Declara??es

var
contadora:inteiro
ganhoMensal,ganhoSemestral,gastoMensal,gastoSemestral,resultadoLiquido:real


inicio
para contadora de 1 ate 6 passo 1 faca
   escreva("Informe o ganho do m?s",contadora,": ")
   leia(ganhoMensal)
   ganhoSemestral<-ganhoSemestral+ganhoMensal
fimpara
para contadora de 1 ate 6 passo 1 faca
   escreva("Informe o gasto do m?s",contadora,": ")
   leia(gastoMensal)
   gastoSemestral<-gastoSemestral+gastoMensal
fimpara
resultadoLiquido<-ganhoSemestral-gastoSemestral
se (ganhoSemestral>gastoSemestral) entao
   escreval("Sua empresa teve o ganho de R$",ganhoSemestral:2:2," e o gasto de R$",gastoSemestral:2:2,".")
   escreval("Parab?ns, o lucro de sua empresa foi de R$",resultadoLiquido:2:2,".")
senao
   se (ganhoSemestral<gastoSemestral) entao
      escreval("Sua empresa teve o ganho de R$",ganhoSemestral:2:2," e o gasto de R$",gastoSemestral:2:2,".")
      escreval("Sua empresa teve um preju?zo de R$",resultadoLiquido:2:2,".")
   senao
      escreval("Sua empresa atingiu o ponto de equil?brio, ou seja, o resultado ? de R$",resultadoLiquido:2:2)
   fimse
fimse

fimalgoritmo
