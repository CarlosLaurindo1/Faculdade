algoritmo "Atividade 2"
// Fun??o :
// Autor :
// Data : 29/03/2022
// Se??o de Declara??es
//Crie uma calculadora que permita o c?lculo de uma equa??o, sem limite de execu??es definido, da seguinte maneira:
//1. Pe?a o primeiro valor ,
//2. Pe?a o c?lculo que deseja fazer (entre as 4 opera??es b?sicas),
//3. Pe?a um segundo valor ,
//4. Efetue o c?lculo,
//5. Pe?a se o usu?rio quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do c?lculo da linha 4 como primeiro valor , se
//disser que n?o, mostre o resultado final .
//Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2

var
primeiroValor,segundoValor,resultado:real
operadorAritmetico,prosseguir:caractere


inicio
escreva("Informe o primeiro valor: ")
leia(primeiroValor)
repita
   escreval("Informe o operador matem?tico")
   escreva("(+ adi??o, - subtra??o, / divis?o, * multiplica??o): ")
   leia(operadorAritmetico)
   escreva("Informe o segundo valor: ")
   leia(segundoValor)
   enquanto (operadorAritmetico="/") e (segundoValor=0) faca
      escreval("Divisor informado ? invalido. Informe valor diferente de '0'.")
      escreva("Informe o segundo valor: ")
      leia(segundoValor)
   fimenquanto
   escolha(operadorAritmetico)
   caso "+"
      resultado<-primeiroValor+segundoValor
   caso "-"
      resultado<-primeiroValor-segundoValor
   caso "/"
      resultado<-primeiroValor/segundoValor
   caso "*"
      resultado<-primeiroValor*segundoValor
   outrocaso
      escreval("Opera??o Inv?lida.")
   fimescolha
   escreval("Deseja prosseguir? (n - n?o, outro - sim) ")
   leia(prosseguir)
   primeiroValor<-resultado
ate(prosseguir="n")
escreval("O Resultado das opera??es ?: ",resultado:2:2)
fimalgoritmo
