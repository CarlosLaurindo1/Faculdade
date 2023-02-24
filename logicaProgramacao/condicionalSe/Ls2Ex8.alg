algoritmo "Consulta a tabela de preços"
//Função : Consultar o preço de acordo com o gênero e tipo de peça de roupa
//Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Seção das declarações

var
generoRoupa,tipoPeca : caractere
valorCalca,valorVestido,valorSaia,valorSueter : real

inicio
escreval("Qual o gênero (masculino/feminino) da roupa a ser comprada?")
leia(generoRoupa)
escreval("Qual peça de roupa deseja comprar (calça/suéter/saia/vestido)?")
leia(tipoPeca)
valorCalca<-100.00
valorSueter<-90.00
valorVestido<-80.00
valorSaia<-65.00
se (generoRoupa = "masculino") e (tipoPeca = "calça") ou (tipoPeca = "calca") entao
   escreval("O valor da peça é de: R$",valorCalca:2:2,".")
senao
   se (generoRoupa = "masculino") e (tipoPeca = "suéter") ou (tipoPeca = "sueter") entao
      escreval("O valor da peça é de: R$",valorSueter:2:2,".")
   senao
      se (generoRoupa = "feminino") e (tipoPeca = "saia") entao
         escreval("O valor da peça é de: R$",valorSaia:2:2,".")
      senao
         se (generoRoupa = "feminino") e (tipoPeca = "vestido") entao
            escreval("O valor da peça é de: R$",valorVestido:2:2,".")
         senao
            escreval("Não existem roupas para os dados informados!")
         fimse
      fimse
   fimse
fimse


fimalgoritmo
