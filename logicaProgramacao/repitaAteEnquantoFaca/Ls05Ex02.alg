algoritmo "Atividade 2"
// Função :
// Autor :
// Data : 29/03/2022
// Seção de Declarações
//Crie uma calculadora que permita o cálculo de uma equação, sem limite de execuções definido, da seguinte maneira:
//1. Peça o primeiro valor ,
//2. Peça o cálculo que deseja fazer (entre as 4 operações básicas),
//3. Peça um segundo valor ,
//4. Efetue o cálculo,
//5. Peça se o usuário quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do cálculo da linha 4 como primeiro valor , se
//disser que não, mostre o resultado final .
//Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2

var
primeiroValor,segundoValor,resultado:real
operadorAritmetico,prosseguir:caractere


inicio
escreva("Informe o primeiro valor: ")
leia(primeiroValor)
repita
   escreval("Informe o operador matemático")
   escreva("(+ adição, - subtração, / divisão, * multiplicação): ")
   leia(operadorAritmetico)
   escreva("Informe o segundo valor: ")
   leia(segundoValor)
   enquanto (operadorAritmetico="/") e (segundoValor=0) faca
      escreval("Divisor informado é invalido. Informe valor diferente de '0'.")
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
      escreval("Operação Inválida.")
   fimescolha
   escreval("Deseja prosseguir? (n - não, outro - sim) ")
   leia(prosseguir)
   primeiroValor<-resultado
ate(prosseguir="n")
escreval("O Resultado das operações é: ",resultado:2:2)
fimalgoritmo
