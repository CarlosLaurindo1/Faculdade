algoritmo "Teste de padrão"
// Função : Forçar o usuário encontrar um padrão no sistema
// Autor : Carlos ALessandro Laurindo
// Data : 05/04/2022
// Seção de Declarações
//Faça um programa que peça ao usuário dois números. Após, enquanto ele
//não digitar o resultado correto da soma desses dois números, mostre
//na tela “tente novamente”, quando acertar “resultado correto!”.
var
num1, num2, resultado:inteiro
inicio
escreval("A regra é clara, você irá informar dois números bases.")
escreval("Após, deverá encontrar um padrão para o novo número.")
escreva("Informe o primeiro número base: ")
leia(num1)
escreva("Informe o segundo número base: ")
leia(num2)
escreva("Informe o novo número: ")
leia(resultado)
enquanto (resultado<>(num1+num2)) faca
   escreval("Tente novamente!")
   escreva("Informe o novo número: ")
   leia(resultado)
fimenquanto
escreval("Resultado correto!")


fimalgoritmo
