algoritmo "PARA FA?A"
// Fun??o : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Se??o de Declara??es

var
contadora,numeroSistema,numero:inteiro

inicio
escreval("As regras s?o as seguintes: ")
escreval("1 - Existe um n?mero aleat?rio entre 1 e 50 selecionado;")
escreval("2 - Voc? ter? 5 chances para acert?-lo, caso acertar, voc? venceu!")
numeroSistema<-randi(50)
para contadora de 1 ate 5 passo 1 faca
   Escreva("Chance ",contadora,": ")
   leia(numero)
   se(numero=numeroSistema)entao
      escreval("Voc? ganhou! Adivinhou o n?mero secreto ",numeroSistema,"!")
      interrompa
   senao
      escreval("Infelizmente, n?o foi dessa vez.")
   fimse
fimpara

fimalgoritmo
