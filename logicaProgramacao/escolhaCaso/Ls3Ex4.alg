algoritmo "Calculadora financeira"
// Fun??o : Informe a raz?o, considerando a sequ?ncia de n?meros e por ?ltimo o operador l?gico
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Se??o de Declara??es

var
num1,num2 : inteiro
operadorAritmetico : caractere

inicio
escreva("Informe o primeiro n?mero: ")
leia(num1)
escreva("Informe o segundo n?mero: ")
leia(num2)
escreva("Informe um operador aritm?tico (+,-,/ ou *): ")
leia(operadorAritmetico)
escreva("O resultado de ",num1," ", operadorAritmetico, num2," ?:")
escolha(operadorAritmetico)
caso "-"
escreval(num1-num2)
caso "+"
escreval(num1+num2)
caso "/"
se(num2 = 0) entao
escreval(" N?o ? poss?vel dividir um n?mero por Zero!")
senao
escreval(num1/num2)
fimse
caso "*"
escreval(num1*num2)
outrocaso
escreval("Opera??o inv?lida.")
fimescolha


fimalgoritmo

