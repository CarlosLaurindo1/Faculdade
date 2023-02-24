algoritmo "Maioridade Civil"
//Função : Identificar se o usuário atingiu a maioridade civil
// Autor: Carlos Alessandro Laurindo
//Data: 11/03/2022
//Seção das declarações

var
maioridadeCivil,idade : inteiro

inicio
escreval ("PIMC: --- Programa Identificador de Maioridade Civil")

escreva ("Digite a maioridade civil em seu estado/país: ")
leia (maioridadeCivil)
escreva ("Digite sua idade: ")
leia (idade)


se (maioridadeCivil<=idade) entao
	escreva ("Você é maior de idade!")
senao
	escreva("Você é menor de idade!")
fimse

fimalgoritmo
