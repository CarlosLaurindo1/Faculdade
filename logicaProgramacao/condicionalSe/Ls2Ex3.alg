algoritmo "Validador sequencial anterior e posterior"
//Função : Solicitar a inserção de números e confirmar se a inserção do antecessor e sucessor condizem
// Autor: Carlos Alessandro Laurindo
//Data: 14/03/2022
//Seção das declarações

var
numeroPrincipal,numeroAnterior,numeroPosterior : inteiro

inicio
escreva ("Informe um número inteiro: ")
leia (numeroPrincipal)
escreva("Informe o número antecessor ao número inteiro: ")
leia(numeroAnterior)
escreva("Informe o número sucessor ao número inteiro: ")
leia(numeroPosterior)
escreval("O número inteiro é o: ",numeroPrincipal,".")
se (numeroAnterior=numeroPrincipal-1) entao
   escreval("Você informou o número antecessor correto. Parabéns!")
senao
   escreval("Você informou o número antecessor incorreto. O número correto é: ",numeroPrincipal-1,".")
fimse
se (numeroPosterior=numeroPrincipal+1) entao
   escreval("Você informou o número sucessor correto. Parabéns!")
senao
   escreval("Você informou o número sucessor incorreto. O número correto é: ",numeroPrincipal+1,".")
fimse


fimalgoritmo
