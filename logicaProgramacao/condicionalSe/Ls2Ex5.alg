algoritmo "Jogo dos algoritmos."
//Fun??o : Determinar se o usu?rio ganhou ou n?o o jogo, considerando as regras estabelecidas.
// Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Se??o das declara??es


var
num1,num2,resto,quociente :inteiro
resultadoQuociente: real

inicio
escreval("Seja bem vindo, ao jogo dos algor?tmos!")
escreval("Para conseguir ganhar, se atente ?s regas:")
escreval("a) O quociente deve ser ?mpar e maior do que 03 e;")
escreval("b) O resto da divis?o deve ser par.")
escreva("Escreva o primeiro n?mero: ")
leia(num1)
escreva("Escreva o segundo n?mero: ")
leia(num2)
se (num2=0) entao
   escreval("O n?mero informado deve ser diferente de zero. Escreva o segundo n?mero: ")
   leia(num2)
fimse
quociente<- (num1\num2)
resto<-  (num1 mod num2)
se (quociente mod 2 = 1) e (quociente>3) e (resto mod num2 = 0) entao
   escreval("O quociente desta opera??o ? (impar e maior que 3): ",quociente,". O resto da opera??o ? (par): ",resto,". Voc? ganhou o jogo!")
senao
   escreval ("Os objetivos do jogo n?o foram alcan?ados. Voc? perdeu!")
fimse

fimalgoritmo
