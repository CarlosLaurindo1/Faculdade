algoritmo "Estrutura ENQUANTO"
// Função : Entender o funcionamento da estrutura enquanto
// Autor : Carlos Alessandro Laurindo
// Data : 25/03/2022
// Seção de Declarações

var
numero,quantidadeInformada,quantidadeInicial:inteiro
inicio
enquanto (numero mod 2 = 0) faca
   escreva("Informe um número: ")
   leia (numero)
   quantidadeInformada<-quantidadeInformada+1
fimenquanto
escreval("Você digitou um número ímpar, não tem direito de digitar mais números!")
escreval("Foram informados: ",quantidadeInformada," números.")
fimalgoritmo
