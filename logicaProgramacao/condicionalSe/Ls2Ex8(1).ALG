algoritmo "Consulta a tabela de pre?os"
//Fun??o : Consultar o pre?o de acordo com o g?nero e tipo de pe?a de roupa
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Se??o das declara??es

var
   generoRoupa,tipoPeca : caractere
   valorCalca,valorVestido,valorSaia,valorSueter : real

inicio
   valorCalca<-100.00
   valorSueter<-90.00
   valorVestido<-80.00
   valorSaia<-65.00
   escreval("Qual o g?nero (Masculino/Feminino) da roupa a ser comprada?")
   leia(generoRoupa)
   se (generoRoupa="Masculino") entao
      escreval("Qual pe?a de roupa deseja comprar (Cal?a/Su?ter)?")
      leia(tipoPeca)
      se(tipoPeca = "Cal?a")entao
         escreval("O valor da pe?a ? de: R$",valorCalca:2:2,".")
      senao
         se (tipoPeca = "Su?ter") entao
            escreval("O valor da pe?a ? de: R$",valorSueter:2:2,".")
         senao
            escreval("A pe?a informada, n?o ? atribu?da para este g?nero.")
         fimse
      fimse
   fimse
   se (generoRoupa = "Feminino") entao
      escreval("Qual pe?a de roupa deseja comprar (Vestido/Saia)?")
      leia(tipoPeca)
      se  (tipoPeca = "Saia") entao
         escreval("O valor da pe?a ? de: R$",valorSaia:2:2,".")
      senao
         se (tipoPeca = "Vestido") entao
            escreval("O valor da pe?a ? de: R$",valorVestido:2:2,".")
         senao
            escreval("A pe?a informada, n?o ? atribu?da para este g?nero.")
         fimse
      fimse
   fimse
   se (generoRoupa<>"Masculino") ou (generoRoupa<>"Feminino") entao
   escreval("G?nero informado ? inv?lido!")
   fimse


fimalgoritmo
fimse