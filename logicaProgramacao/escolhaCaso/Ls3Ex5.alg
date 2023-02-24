algoritmo "Condição por forma de pagamento"
// Função : Dependendo do valor, forma e condição de pagamento, teremos o valor total da venda
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Seção de Declarações

var
categoria,subcategoria,opcao:caractere

inicio
escreva("Informe a categoria (1 - Filme, 2 - Série, 3 - Documentário): ")
leia(categoria)
escolha(categoria)
caso "1","filme"
   escreva("Informe o gênero (1 - Suspense, 2 - Ação): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Suspense","1"
      opcao<-"A órfã"
   caso "Ação","2"
      opcao<-"Batman: O cavaleiro das trevas"
   outrocaso
      escreva("Não existem opções de acordo com suas escolhas.")
   fimescolha
caso "Série","2"
   escreva("Informe o gênero (1 - Drama, 2 - Comédia): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Drama","1"
      opcao<-"Revenge"
   caso "Comédia","2"
      opcao<-"How I met your mother"
   outrocaso
      escreva("Não existem opções de acordo com suas escolhas.")
   fimescolha
caso "Documentário","3"
   escreva("Informe o gênero (1 - Investigação, 2 - Comédia): ")
   leia(subcategoria)
   escolha(subcategoria)
   caso "Investigação","1"
      opcao<-"Deep web"
   caso "Comédia","2"
      opcao<-"Terra"
   outrocaso
      escreva("Não existem opções de acordo com suas escolhas.")
   fimescolha
fimescolha
escreval("Para a categoria e subcategoria, a opção disponível é: ")
escreval(opcao)

fimalgoritmo
