algoritmo "Promo??o de combust?veis"
//Fun??o : Calcular os valores e quantidades de combust?vel para condi??es de descontos
//Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Se??o das declara??es

var
tipoCombustivel : caractere
percDesconto : inteiro
quantLitros,precoGasolina,precoAlcool : real


inicio
precoAlcool<-2.90
precoGasolina<-3.30
escreval("Informe o tipo de combust?vel:")
leia(tipoCombustivel)

se (tipoCombustivel="alc") ou (tipoCombustivel="?lcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") entao
   escreval("Combust?vel Selecionado: ?lcool. Pre?o por litro: R$",precoAlcool:2:2)
senao
   se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") entao
      escreval("Combust?vel Selecionado: Gasolina. Pre?o por litro: R$",precoGasolina:2:2)
   fimse
fimse

escreval("Quantos litros foram abastecidos?")
leia(quantLitros)
se (tipoCombustivel="alc") ou (tipoCombustivel="?lcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") e (quantLitros<=20) entao
   escreval("Valor total ? pagar: R$",precoAlcool*3/100*quantLitros+precoAlcool*quantLitros:2:2," Voc? recebeu 3% de desconto.")
senao
   se (tipoCombustivel="alc") ou (tipoCombustivel="?lcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") e (quantLitros>20) entao
      escreval("Valor total ? pagar: R$",precoAlcool*5/100*quantLitros+precoAlcool*quantLitros:2:2," Voc? recebeu 5% de desconto.")
   fimse
fimse
se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") e (quantLitros<=20) entao
   escreval("Valor total ? pagar: R$",precoGasolina*4/100*quantLitros+precoGasolina*quantLitros:2:2,". Voc? recebeu 4% de desconto.")
senao
   se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") e (quantLitros>21) entao
      escreval("Valor total ? pagar: R$",precoGasolina*6/100*quantLitros+precoGasolina*quantLitros:2:2,". Voc? recebeu 6% de desconto.")
   fimse
fimse



fimalgoritmo

