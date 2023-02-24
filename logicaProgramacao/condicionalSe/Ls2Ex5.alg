algoritmo "Jogo dos algoritmos."
//Função : Determinar se o usuário ganhou ou não o jogo, considerando as regras estabelecidas.
// Autor: Carlos Alessandro Laurindo
//Data: 16/03/2022
//Seção das declarações


var
num1,num2,resto,quociente :inteiro
resultadoQuociente: real

inicio
escreval("Seja bem vindo, ao jogo dos algorítmos!")
escreval("Para conseguir ganhar, se atente às regas:")
escreval("a) O quociente deve ser ímpar e maior do que 03 e;")
escreval("b) O resto da divisão deve ser par.")
escreva("Escreva o primeiro número: ")
leia(num1)
escreva("Escreva o segundo número: ")
leia(num2)
se (num2=0) entao
   escreval("O número informado deve ser diferente de zero. Escreva o segundo número: ")
   leia(num2)
fimse
quociente<- (num1\num2)
resto<-  (num1 mod num2)
se (quociente mod 2 = 1) e (quociente>3) e (resto mod num2 = 0) entao
   escreval("O quociente desta operação é (impar e maior que 3): ",quociente,". O resto da operação é (par): ",resto,". Você ganhou o jogo!")
senao
   escreval ("Os objetivos do jogo não foram alcançados. Você perdeu!")
fimse

fimalgoritmo
