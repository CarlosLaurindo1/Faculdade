algoritmo "Maioridade Civil"
//Fun??o : Identificar se o usu?rio atingiu a maioridade civil
// Autor: Carlos Alessandro Laurindo
//Data: 11/03/2022
//Se??o das declara??es

var
maioridadeCivil,idade : inteiro

inicio
escreval ("PIMC: --- Programa Identificador de Maioridade Civil")

escreva ("Digite a maioridade civil em seu estado/pa?s: ")
leia (maioridadeCivil)
escreva ("Digite sua idade: ")
leia (idade)


se (maioridadeCivil<=idade) entao
	escreva ("Voc? ? maior de idade!")
senao
	escreva("Voc? ? menor de idade!")
fimse

fimalgoritmo
