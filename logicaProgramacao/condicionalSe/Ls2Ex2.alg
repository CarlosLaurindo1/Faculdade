algoritmo "Ação promocional"
//Função : Identificar se o usuário atingiu a maioridade civil
// Autor: Carlos Alessandro Laurindo
//Data: 11/03/2022
//Seção das declarações


var
quantidade : inteiro
valorUnitario : real

inicio
escreval ("Ação promocional, na compra acima de 12 unidades, pague R$1.00 por maçã.")

escreva ("Digite a quantidade: ")
leia (quantidade)

se (quantidade>=12) entao
   valorUnitario<-1.00
senao
   valorUnitario<-1.30
fimse

escreva ("O valor total de sua compra é: R$",quantidade*valorUnitario:2:2,".")

fimalgoritmo
