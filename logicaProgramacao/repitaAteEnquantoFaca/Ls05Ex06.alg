algoritmo "Teste de padr?o"
// Fun??o : For?ar o usu?rio encontrar um padr?o no sistema
// Autor : Carlos ALessandro Laurindo
// Data : 05/04/2022
// Se??o de Declara??es
//Fa?a um algoritmo que pe?a a idade, o sexo e o sal?rio de um grupo indeterminado de pessoas.
//O algoritmo deve encerrar quando o usu?rio informar ?Fim? para a pergunta ?Deseja continuar??.
//Ao final, deve ser mostrado:

//a) a m?dia de sal?rio do grupo;
//b) a m?dia de todas as idades;
//c) a quantidade de mulheres com sal?rio at? R$1000,00.

var
idade,totalUsuarios,feminino,somaIdades:inteiro
salario,somaSalario:real
sexo,continuar: caractere
inicio
repita
   escreva("Informe a idade do usu?rio: ")
   leia(idade)
   somaIdades<-somaIdades+idade
   totalUsuarios<-totalUsuarios+1
   escreva("Informe o sexo do usu?rio (m - masculino, f - feminino): ")
   leia(sexo)
   enquanto (sexo<>"m") e (sexo<>"f") faca
      escreval("Sexo informado ? inv?lido.")
      escreva("Informe o sexo do usu?rio (m - masculino, f - feminino): ")
      leia(sexo)
   fimenquanto
   escreva("Informe o sal?rio do usu?rio: ")
   leia(salario)
   se(sexo="f") e (salario<=1000) entao
      feminino<-feminino+1
   fimse
   somaSalario<-somaSalario+salario
   escreval("Deseja continuar? (Fim - n?o, outro - sim)")
   leia(continuar)
ate(continuar = "Fim")
escreval("Foram apresentados dados de",totalUsuarios," usu?rios.")
escreval("A m?dia de idades ?: ",somaIdades/totalUsuarios," anos.")
escreval("A m?dia salarial ? de: R$",somaSalario/totalUsuarios:2:2,".")
escreval(feminino," mulheres recebem sal?rio inferior a R$1000,00")


fimalgoritmo
