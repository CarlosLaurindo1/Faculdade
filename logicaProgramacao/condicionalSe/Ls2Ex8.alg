algoritmo "Consulta a tabela de pre?os"
//Fun??o : Consultar o pre?o de acordo com o g?nero e tipo de pe?a de roupa
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Se??o das declara??es

var
generoRoupa,tipoPeca : caractere
valorCalca,valorVestido,valorSaia,valorSueter : real

inicio
escreval("Qual o g?nero (masculino/feminino) da roupa a ser comprada?")
leia(generoRoupa)
escreval("Qual pe?a de roupa deseja comprar (cal?a/su?ter/saia/vestido)?")
leia(tipoPeca)
valorCalca<-100.00
valorSueter<-90.00
valorVestido<-80.00
valorSaia<-65.00
se (generoRoupa = "masculino") e (tipoPeca = "cal?a") ou (tipoPeca = "calca") entao
   escreval("O valor da pe?a ? de: R$",valorCalca:2:2,".")
senao
   se (generoRoupa = "masculino") e (tipoPeca = "su?ter") ou (tipoPeca = "sueter") entao
      escreval("O valor da pe?a ? de: R$",valorSueter:2:2,".")
   senao
      se (generoRoupa = "feminino") e (tipoPeca = "saia") entao
         escreval("O valor da pe?a ? de: R$",valorSaia:2:2,".")
      senao
         se (generoRoupa = "feminino") e (tipoPeca = "vestido") entao
            escreval("O valor da pe?a ? de: R$",valorVestido:2:2,".")
         senao
            escreval("N?o existem roupas para os dados informados!")
         fimse
      fimse
   fimse
fimse


fimalgoritmo
