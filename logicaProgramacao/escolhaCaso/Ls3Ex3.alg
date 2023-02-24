algoritmo "Condição por forma de pagamento"
// Função : Dependendo do valor, forma e condição de pagamento, teremos o valor total da venda
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Seção de Declarações

var
valor,valorfinal,percDescAcresc,acrescimo:real
formaPagamento,condicao:caractere

inicio
escreva("Informe o valor total do produto: R$")
leia(valor)
Escreval("Selecione a forma de pagamento: ")
escreval("(1 - Cheque, 2 - Cartão Crdt, 3 - Boleto, 4 - Dinheiro)")
leia(formaPagamento)
escolha(formaPagamento)
caso "1"
   formaPagamento<-"Cheque"
   escreva("Informe a condição de pagamento (1 - A vista, 2 - A prazo): ")
   leia(condicao)
   escolha(condicao)
   caso "1"
      condicao<-"A vista"
      valorfinal<-valor
   caso "2"
      condicao<-"A prazo"
      valorfinal<-valor
   outrocaso
      escreval("Condição de pagamento inválida.")
   fimescolha
caso "2"
   formaPagamento<-"Cartão de crédito"
   escreva("Informe a condição de pagamento (1 - A vista, 2 - A prazo): ")
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
      escreval("Condição de pagamento inválida.")
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
   escreval("Forma de pagamento inválida.")
fimescolha
escreval("Valor total do produto: R$", valor:2:2,".")
escreval("Pagamento selecionado: ",formaPagamento,".")
escreval("Condição de pagamento: ",condicao,".")
escreval("Valor total da venda: R$",valorfinal:2:2,".")

fimalgoritmo
