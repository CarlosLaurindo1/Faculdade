algoritmo "Teste de padr?o"
// Fun??o : For?ar o usu?rio encontrar um padr?o no sistema
// Autor : Carlos ALessandro Laurindo
// Data : 05/04/2022
// Se??o de Declara??es
//Fa?a um programa que pe?a ao usu?rio dois n?meros. Ap?s, enquanto ele
//n?o digitar o resultado correto da soma desses dois n?meros, mostre
//na tela ?tente novamente?, quando acertar ?resultado correto!?.
var
num1, num2, resultado:inteiro
inicio
escreval("A regra ? clara, voc? ir? informar dois n?meros bases.")
escreval("Ap?s, dever? encontrar um padr?o para o novo n?mero.")
escreva("Informe o primeiro n?mero base: ")
leia(num1)
escreva("Informe o segundo n?mero base: ")
leia(num2)
escreva("Informe o novo n?mero: ")
leia(resultado)
enquanto (resultado<>(num1+num2)) faca
   escreval("Tente novamente!")
   escreva("Informe o novo n?mero: ")
   leia(resultado)
fimenquanto
escreval("Resultado correto!")


fimalgoritmo
