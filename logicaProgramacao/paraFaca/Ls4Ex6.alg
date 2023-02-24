algoritmo "PARA FAÇA"
// Função : Aprender um pouco sobre tal estrutura
// Autor : Carlos Alessandro Laurindo
// Data : 23/03/2022
// Seção de Declarações

var
contadora,numeroSistema,numero:inteiro

inicio
escreval("As regras são as seguintes: ")
escreval("1 - Existe um número aleatório entre 1 e 50 selecionado;")
escreval("2 - Você terá 5 chances para acertá-lo, caso acertar, você venceu!")
numeroSistema<-randi(50)
para contadora de 1 ate 5 passo 1 faca
   Escreva("Chance ",contadora,": ")
   leia(numero)
   se(numero=numeroSistema)entao
      escreval("Você ganhou! Adivinhou o número secreto ",numeroSistema,"!")
      interrompa
   senao
      escreval("Infelizmente, não foi dessa vez.")
   fimse
fimpara

fimalgoritmo
