algoritmo "Validador sequencial anterior e posterior"
//Fun??o : Solicitar a inser??o de n?meros e confirmar se a inser??o do antecessor e sucessor condizem
// Autor: Carlos Alessandro Laurindo
//Data: 14/03/2022
//Se??o das declara??es

var
numeroPrincipal,numeroAnterior,numeroPosterior : inteiro

inicio
escreva ("Informe um n?mero inteiro: ")
leia (numeroPrincipal)
escreva("Informe o n?mero antecessor ao n?mero inteiro: ")
leia(numeroAnterior)
escreva("Informe o n?mero sucessor ao n?mero inteiro: ")
leia(numeroPosterior)
escreval("O n?mero inteiro ? o: ",numeroPrincipal,".")
se (numeroAnterior=numeroPrincipal-1) entao
   escreval("Voc? informou o n?mero antecessor correto. Parab?ns!")
senao
   escreval("Voc? informou o n?mero antecessor incorreto. O n?mero correto ?: ",numeroPrincipal-1,".")
fimse
se (numeroPosterior=numeroPrincipal+1) entao
   escreval("Voc? informou o n?mero sucessor correto. Parab?ns!")
senao
   escreval("Voc? informou o n?mero sucessor incorreto. O n?mero correto ?: ",numeroPrincipal+1,".")
fimse


fimalgoritmo
