algoritmo "Balanço Financeiro Semestral"
//Função : Realizar o balanço financeiro semestral, considerando o ganho bruto e os gastos da empresa.
// Autor: Carlos Alessandro Laurindo
//Data: 14/03/2022
//Seção das declarações

var
ganhoMes1,ganhoMes2,ganhoMes3,ganhoMes4,ganhoMes5,ganhoMes6,ganhoSemestral : real
gastoMes1,gastoMes2,gastoMes3,gastoMes4,gastoMes5,gastoMes6,gastoSemestral,saldoFinanceiro : real

inicio
escreva("Ganhos do mês de Janeiro: (+)")
leia(ganhoMes1)
escreva("Ganhos do mês de Fevereiro: (+)")
leia(ganhoMes2)
escreva("Ganhos do mês de Março: (+)")
leia(ganhoMes3)
escreva("Ganhos do mês de Abril: (+)")
leia(ganhoMes4)
escreva("Ganhos do mês de Maio: (+)")
leia(ganhoMes5)
escreva("Ganhos do mês de Junho: (+)")
leia(ganhoMes6)
escreva("Total de ganhos no primeiro semestre: (=)")
ganhoSemestral <- (ganhoMes1+ganhoMes2+ganhoMes3+ganhoMes4+ganhoMes5+ganhoMes6)
escreval(ganhoSemestral:2:2)
escreva("Gastos do mês Janeiro: (-)")
leia(gastoMes1)
escreva("Gastos do mês Fevereiro: (-)")
leia(gastoMes2)
escreva("Gastos do mês Março: (-)")
leia(gastoMes3)
escreva("Gastos do mês Abril: (-)")
leia(gastoMes4)
escreva("Gastos do mês Maio: (-)")
leia(gastoMes5)
escreva("Gastos do mês Junho: (-)")
leia(gastoMes6)
escreva("Total de gastos do primeiro semestre : (=)")
gastoSemestral<- (gastoMes1+gastoMes2+gastoMes3+gastoMes4+gastoMes5+gastoMes6)
escreval(gastoSemestral:2:2)
saldoFinanceiro<- (ganhoSemestral-gastoSemestral)
se (ganhoSemestral>gastoSemestral) entao
   escreval ("Sua empresa obteve um lucro de: R$",saldoFinanceiro:2:2)
   senao
   se (ganhoSemestral<gastoSemestral) entao
   escreval ("Sua empresa obteve um prejuízo de: R$",saldoFinanceiro:2:2)
   senao (ganhoSemestral=gastoSemestral)
   escreval ("Sua empresa atingiu equilíbrio financeiro, isto é, não obteve nem lucro e nem prejuízo!")
fimse
fimse

fimalgoritmo
