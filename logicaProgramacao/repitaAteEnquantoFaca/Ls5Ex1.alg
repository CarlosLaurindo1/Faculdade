algoritmo "Estrutura ENQUANTO"
// Fun??o : Entender o funcionamento da estrutura enquanto
// Autor : Carlos Alessandro Laurindo
// Data : 25/03/2022
// Se??o de Declara??es

var
numero,quantidadeInformada,quantidadeInicial:inteiro
inicio
enquanto (numero mod 2 = 0) faca
   escreva("Informe um n?mero: ")
   leia (numero)
   quantidadeInformada<-quantidadeInformada+1
fimenquanto
escreval("Voc? digitou um n?mero ?mpar, n?o tem direito de digitar mais n?meros!")
escreval("Foram informados: ",quantidadeInformada," n?meros.")
fimalgoritmo
