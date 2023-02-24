algoritmo "Verificar a sequência de números correta"
//Função : Comparar os números informados e validar qual o maior
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Seção das declarações

var
num1,num2,num3 : inteiro

inicio
escreva("Informe um número: ")
leia(num1)
escreva("Informe outro número: ")
leia(num2)
escreva("Informe outro número: ")
leia(num3)
se(num1=num2) ou (num2=num3) ou (num1=num3) entao
   escreval("Foram informados números iguais, refaça o teste!")
fimse
se(num1>num3) e (num2>num3) entao
   escreval("O menor número informado foi: ",num3)
senao
   se (num1>num2) e (num3>num2) entao
      escreval("O menor número informado foi: ", num2)
   senao
      se (num2>num1) e (num3>num1) entao
         escreval("O menor número informado foi: ", num1)
      fimse
   fimse
fimse

fimalgoritmo
