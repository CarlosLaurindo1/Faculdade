algoritmo "Teste de padrão"
// Função : Forçar o usuário encontrar um padrão no sistema
// Autor : Carlos ALessandro Laurindo
// Data : 05/04/2022
// Seção de Declarações
//Faça um algoritmo que peça a idade, o sexo e o salário de um grupo indeterminado de pessoas.
//O algoritmo deve encerrar quando o usuário informar “Fim” para a pergunta “Deseja continuar?”.
//Ao final, deve ser mostrado:

//a) a média de salário do grupo;
//b) a média de todas as idades;
//c) a quantidade de mulheres com salário até R$1000,00.

var
idade,totalUsuarios,feminino,somaIdades:inteiro
salario,somaSalario:real
sexo,continuar: caractere
inicio
repita
   escreva("Informe a idade do usuário: ")
   leia(idade)
   somaIdades<-somaIdades+idade
   totalUsuarios<-totalUsuarios+1
   escreva("Informe o sexo do usuário (m - masculino, f - feminino): ")
   leia(sexo)
   enquanto (sexo<>"m") e (sexo<>"f") faca
      escreval("Sexo informado é inválido.")
      escreva("Informe o sexo do usuário (m - masculino, f - feminino): ")
      leia(sexo)
   fimenquanto
   escreva("Informe o salário do usuário: ")
   leia(salario)
   se(sexo="f") e (salario<=1000) entao
      feminino<-feminino+1
   fimse
   somaSalario<-somaSalario+salario
   escreval("Deseja continuar? (Fim - não, outro - sim)")
   leia(continuar)
ate(continuar = "Fim")
escreval("Foram apresentados dados de",totalUsuarios," usuários.")
escreval("A média de idades é: ",somaIdades/totalUsuarios," anos.")
escreval("A média salarial é de: R$",somaSalario/totalUsuarios:2:2,".")
escreval(feminino," mulheres recebem salário inferior a R$1000,00")


fimalgoritmo
