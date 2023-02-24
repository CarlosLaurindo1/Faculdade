algoritmo "Promoção de combustíveis"
//Função : Calcular os valores e quantidades de combustível para condições de descontos
//Autor: Carlos Alessandro Laurindo
//Data: 15/03/2022
//Seção das declarações

var
tipoCombustivel : caractere
percDesconto : inteiro
quantLitros,precoGasolina,precoAlcool : real


inicio
precoAlcool<-2.90
precoGasolina<-3.30
escreval("Informe o tipo de combustível:")
leia(tipoCombustivel)

se (tipoCombustivel="alc") ou (tipoCombustivel="álcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") entao
   escreval("Combustível Selecionado: Álcool. Preço por litro: R$",precoAlcool:2:2)
senao
   se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") entao
      escreval("Combustível Selecionado: Gasolina. Preço por litro: R$",precoGasolina:2:2)
   fimse
fimse

escreval("Quantos litros foram abastecidos?")
leia(quantLitros)
se (tipoCombustivel="alc") ou (tipoCombustivel="álcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") e (quantLitros<=20) entao
   escreval("Valor total à pagar: R$",precoAlcool*3/100*quantLitros+precoAlcool*quantLitros:2:2," Você recebeu 3% de desconto.")
senao
   se (tipoCombustivel="alc") ou (tipoCombustivel="álcool") ou (tipoCombustivel="alcool") ou (tipoCombustivel="a") e (quantLitros>20) entao
      escreval("Valor total à pagar: R$",precoAlcool*5/100*quantLitros+precoAlcool*quantLitros:2:2," Você recebeu 5% de desconto.")
   fimse
fimse
se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") e (quantLitros<=20) entao
   escreval("Valor total à pagar: R$",precoGasolina*4/100*quantLitros+precoGasolina*quantLitros:2:2,". Você recebeu 4% de desconto.")
senao
   se (tipoCombustivel="g") ou (tipoCombustivel="gas") ou (tipoCombustivel="gasosa") ou (tipoCombustivel="gasolina") e (quantLitros>21) entao
      escreval("Valor total à pagar: R$",precoGasolina*6/100*quantLitros+precoGasolina*quantLitros:2:2,". Você recebeu 6% de desconto.")
   fimse
fimse



fimalgoritmo

