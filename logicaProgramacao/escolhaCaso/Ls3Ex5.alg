algoritmo "Condi??o por forma de pagamento"
// Fun??o : Dependendo do valor, forma e condi??o de pagamento, teremos o valor total da venda
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Se??o de Declara??es

var
categoria,subcategoria,opcao:caractere

inicio
escreva("Informe a categoria (1 - Filme, 2 - S?rie, 3 - Document?rio): ")
leia(categoria)
escolha(categoria)
caso "1","filme"
   escreva("Informe o g?nero (1 - Suspense, 2 - A??o): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Suspense","1"
      opcao<-"A ?rf?"
   caso "A??o","2"
      opcao<-"Batman: O cavaleiro das trevas"
   outrocaso
      escreva("N?o existem op??es de acordo com suas escolhas.")
   fimescolha
caso "S?rie","2"
   escreva("Informe o g?nero (1 - Drama, 2 - Com?dia): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Drama","1"
      opcao<-"Revenge"
   caso "Com?dia","2"
      opcao<-"How I met your mother"
   outrocaso
      escreva("N?o existem op??es de acordo com suas escolhas.")
   fimescolha
caso "Document?rio","3"
   escreva("Informe o g?nero (1 - Investiga??o, 2 - Com?dia): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Investiga??o","1"
      opcao<-"Deep web"
   caso "Com?dia","2"
      opcao<-"Terra"
   outrocaso
      escreva("N?o existem op??es de acordo com suas escolhas.")
   fimescolha
fimescolha
escreval("Para a categoria e subcategoria, a op??o dispon?vel ?: ")
escreval(opcao)

fimalgoritmo
