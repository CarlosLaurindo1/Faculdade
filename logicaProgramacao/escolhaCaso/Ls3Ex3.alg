algoritmo "Condi??o por forma de pagamento"
// Fun??o : Dependendo do valor, forma e condi??o de pagamento, teremos o valor total da venda
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Se??o de Declara??es

var
valor,valorfinal,percDescAcresc,acrescimo:real
formaPagamento,condicao:caractere

inicio
escreva("Informe o valor total do produto: R$")
leia(valor)
Escreval("Selecione a forma de pagamento: ")
escreval("(1 - Cheque, 2 - Cart?o Crdt, 3 - Boleto, 4 - Dinheiro)")
leia(formaPagamento)
escolha(formaPagamento)
caso "1"
   formaPagamento<-"Cheque"
   escreva("Informe a condi??o de pagamento (1 - A vista, 2 - A prazo): ")
   leia(condicao)
   escolha(condicao)
   caso "1"
      condicao<-"A vista"
      valorfinal<-valor
   caso "2"
      condicao<-"A prazo"
      valorfinal<-valor
   outrocaso
      escreval("Condi??o de pagamento inv?lida.")
   fimescolha
caso "2"
   formaPagamento<-"Cart?o de cr?dito"
   escreva("Informe a condi??o de pagamento (1 - A vista, 2 - A prazo): ")
   leia(condicao)
   escolha(condicao)
   caso "1"
      condicao<-"A vista"
      valorFinal<-valor
   caso "2"
      condicao<-"A prazo"
      percDescAcresc<-5
      valorFinal<-valor+valor*percDescAcresc/100
   outrocaso
      escreval("Condi??o de pagamento inv?lida.")
   fimescolha
caso "3"
   formaPagamento<-"Boleto"
   valorfinal<-valor-valor*percDescAcresc/100
   condicao<-"A vista"
caso "4"
   formaPagamento<-"Dinheiro"
   condicao<-"A vista"
   se(valor>=300)entao
      percDescAcresc<-5
      valorfinal<-valor-valor*percDescAcresc/100
   senao
      valorFinal<-valor
   fimse
outrocaso
   escreval("Forma de pagamento inv?lida.")
fimescolha
escreval("Valor total do produto: R$", valor:2:2,".")
escreval("Pagamento selecionado: ",formaPagamento,".")
escreval("Condi??o de pagamento: ",condicao,".")
escreval("Valor total da venda: R$",valorfinal:2:2,".")

fimalgoritmo
