algoritmo "Promo??o de combust?veis"
//Fun??o : Calcular os valores e quantidades de combust?vel para condi??es de descontos
//Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Se??o das declara??es

var
   tipoCombustivel : caractere
   percDesconto : inteiro
   quantLitros,precoGasolina,precoGasolinaA,precoGasolinaB,precoAlcool,precoAlcoolA,precoAlcoolB: real


inicio
   precoAlcool<-2.90
   precoGasolina<-3.30
   escreval("Informe o tipo de combust?vel (A/G):")
   leia(tipoCombustivel)
   escreval("Quantos litros foram abastecidos?")
   leia(quantLitros)
   precoAlcoolA<-precoAlcool*quantLitros-precoAlcool*quantLitros*3/100
   precoAlcoolB<-precoAlcool*quantLitros-precoAlcool*quantLitros*5/100
   precoGasolinaA<-precoGasolina*quantLitros-precoGasolina*quantLitros*4/100
   precoGasolinaB<-precoGasolina*quantLitros-precoGasolina*quantLitros*6/100
   se (tipoCombustivel="A") e (quantLitros<=20) entao
      escreval("Selecionado ?lcool. Valor total ? pagar: R$",precoAlcoolA:2:2," Voc? recebeu 3% de desconto.")
   senao
      se (tipoCombustivel="A") e (quantLitros>20) entao
         escreval("Valor total ? pagar: R$",precoAlcoolB:2:2," Voc? recebeu 5% de desconto.")
      senao
         se (tipoCombustivel="g") e (quantLitros<=20) entao
            escreval("Valor total ? pagar: R$",precoGasolinaA:2:2,". Voc? recebeu 4% de desconto.")
         senao
            se (tipoCombustivel="g") e (quantLitros>20) entao
               escreval("Valor total ? pagar: R$",precoGasolinaB:2:2,". Voc? recebeu 6% de desconto.")
            senao
               escreval("O combust?vel informado ? inv?lido!")
            fimse
         fimse
      fimse
   fimse



fimalgoritmo