algoritmo "Verificar a sequ?ncia de n?meros correta"
//Fun??o : Comparar os n?meros informados e validar qual o maior
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Se??o das declara??es

var
num1,num2,num3 : inteiro

inicio
escreva("Informe um n?mero: ")
leia(num1)
escreva("Informe outro n?mero: ")
leia(num2)
escreva("Informe outro n?mero: ")
leia(num3)
se(num1=num2) ou (num2=num3) ou (num1=num3) entao
   escreval("Foram informados n?meros iguais, refa?a o teste!")
fimse
se(num1>num3) e (num2>num3) entao
   escreval("O menor n?mero informado foi: ",num3)
senao
   se (num1>num2) e (num3>num2) entao
      escreval("O menor n?mero informado foi: ", num2)
   senao
      se (num2>num1) e (num3>num1) entao
         escreval("O menor n?mero informado foi: ", num1)
      fimse
   fimse
fimse

fimalgoritmo
