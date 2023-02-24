algoritmo "Calculadora financeira"
// Função : Informe a razão, considerando a sequência de números e por último o operador lógico
// Autor : Carlos Alessandro Laurindo
// Data : 17/03/2022
// Seção de Declarações

var
num1,num2 : inteiro
operadorAritmetico : caractere

inicio
escreva("Informe o primeiro número: ")
leia(num1)
escreva("Informe o segundo número: ")
leia(num2)
escreva("Informe um operador aritmético (+,-,/ ou *): ")
leia(operadorAritmetico)
escreva("O resultado de ",num1," ", operadorAritmetico, num2," é:")
escolha(operadorAritmetico)
caso "-"
escreval(num1-num2)
caso "+"
escreval(num1+num2)
caso "/"
se(num2 = 0) entao
escreval(" Não é possível dividir um número por Zero!")
senao
escreval(num1/num2)
fimse
caso "*"
escreval(num1*num2)
outrocaso
escreval("Operação inválida.")
fimescolha


fimalgoritmo

