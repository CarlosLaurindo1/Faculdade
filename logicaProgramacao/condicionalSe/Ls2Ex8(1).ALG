algoritmo "Consulta a tabela de preços"
//Função : Consultar o preço de acordo com o gênero e tipo de peça de roupa
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Seção das declarações

var
   generoRoupa,tipoPeca : caractere
   valorCalca,valorVestido,valorSaia,valorSueter : real

inicio
   valorCalca<-100.00
   valorSueter<-90.00
   valorVestido<-80.00
   valorSaia<-65.00
   escreval("Qual o gênero (Masculino/Feminino) da roupa a ser comprada?")
   leia(generoRoupa)
   se (generoRoupa="Masculino") entao
      escreval("Qual peça de roupa deseja comprar (Calça/Suéter)?")
      leia(tipoPeca)
      se(tipoPeca = "Calça")entao
         escreval("O valor da peça é de: R$",valorCalca:2:2,".")
      senao
         se (tipoPeca = "Suéter") entao
            escreval("O valor da peça é de: R$",valorSueter:2:2,".")
         senao
            escreval("A peça informada, não é atribuída para este gênero.")
         fimse
      fimse
   fimse
   se (generoRoupa = "Feminino") entao
      escreval("Qual peça de roupa deseja comprar (Vestido/Saia)?")
      leia(tipoPeca)
      se  (tipoPeca = "Saia") entao
         escreval("O valor da peça é de: R$",valorSaia:2:2,".")
      senao
         se (tipoPeca = "Vestido") entao
            escreval("O valor da peça é de: R$",valorVestido:2:2,".")
         senao
            escreval("A peça informada, não é atribuída para este gênero.")
         fimse
      fimse
   fimse
   se (generoRoupa<>"Masculino") ou (generoRoupa<>"Feminino") entao
   escreval("Gênero informado é inválido!")
   fimse


fimalgoritmo
fimse