algoritmo "PARA FAÇA"
// Função : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Seção de Declarações


var
contadora,valorInicial,valorFinal,outroValor,par,somaPar:inteiro


inicio
Escreva("Informe o valor inicial: ")
leia(valorInicial)
escreva("Informe o valor final: ")
leia(valorFinal)
se(valorFinal<valorInicial)entao
   outroValor<-valorFinal
   valorFinal<-valorInicial
   valorInicial<-outroValor
fimse
para contadora de valorInicial ate valorFinal passo 1 faca
   se (contadora mod 2 = 0)entao
      somaPar<-somaPar+contadora
   fimse
fimpara
Escreval("A soma de todos os números pares é: ",somaPar)

fimalgoritmo
