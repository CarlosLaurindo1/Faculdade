algoritmo "A??o promocional"
//Fun??o : Identificar se o usu?rio atingiu a maioridade civil
// Autor: Carlos Alessandro Laurindo
//Data: 11/03/2022
//Se??o das declara??es


var
quantidade : inteiro
valorUnitario : real

inicio
escreval ("A??o promocional, na compra acima de 12 unidades, pague R$1.00 por ma??.")

escreva ("Digite a quantidade: ")
leia (quantidade)

se (quantidade>=12) entao
   valorUnitario<-1.00
senao
   valorUnitario<-1.30
fimse

escreva ("O valor total de sua compra ?: R$",quantidade*valorUnitario:2:2,".")

fimalgoritmo
