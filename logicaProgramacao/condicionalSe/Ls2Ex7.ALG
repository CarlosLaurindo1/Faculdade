algoritmo "Promoção de combustíveis"
//Função : Calcular os valores e quantidades de combustível para condições de descontos
//Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Seção das declarações

var
   tipoCombustivel : caractere
   percDesconto : inteiro
   quantLitros,precoGasolina,precoGasolinaA,precoGasolinaB,precoAlcool,precoAlcoolA,precoAlcoolB: real


inicio
   precoAlcool<-2.90
   precoGasolina<-3.30
   escreval("Informe o tipo de combustível (A/G):")
   leia(tipoCombustivel)
   escreval("Quantos litros foram abastecidos?")
   leia(quantLitros)
   precoAlcoolA<-precoAlcool*quantLitros-precoAlcool*quantLitros*3/100
   precoAlcoolB<-precoAlcool*quantLitros-precoAlcool*quantLitros*5/100
   precoGasolinaA<-precoGasolina*quantLitros-precoGasolina*quantLitros*4/100
   precoGasolinaB<-precoGasolina*quantLitros-precoGasolina*quantLitros*6/100
   se (tipoCombustivel="A") e (quantLitros<=20) entao
      escreval("Selecionado álcool. Valor total à pagar: R$",precoAlcoolA:2:2," Você recebeu 3% de desconto.")
   senao
      se (tipoCombustivel="A") e (quantLitros>20) entao
         escreval("Valor total à pagar: R$",precoAlcoolB:2:2," Você recebeu 5% de desconto.")
      senao
         se (tipoCombustivel="g") e (quantLitros<=20) entao
            escreval("Valor total à pagar: R$",precoGasolinaA:2:2,". Você recebeu 4% de desconto.")
         senao
            se (tipoCombustivel="g") e (quantLitros>20) entao
               escreval("Valor total à pagar: R$",precoGasolinaB:2:2,". Você recebeu 6% de desconto.")
            senao
               escreval("O combustível informado é inválido!")
            fimse
         fimse
      fimse
   fimse



fimalgoritmo