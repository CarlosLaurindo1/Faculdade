algoritmo "Atividade 1"
// Fun??o : Apresenta??o da Matriz
// Autor : Carlos Alessandro Laurindo
// Data : 13/04/2022
// Se??o de Declara??es
//Fa?a um algoritmo que alimente uma matriz 2x2 e mostre em tela a matriz ao final.
var
matriz: vetor [1..2,1..2] de caractere
lin,col:inteiro
inicio
para lin de 1 ate 2 passo 1 faca
   para col de 1 ate 2 passo 1 faca
      escreva("Informe um poss?vel destino para suas f?rias: ")
      leia(matriz[lin,col])
   fimpara
fimpara
escreval("Estes foram os destinos informados: ")
para lin de 1 ate 2 passo 1 faca
   para col de 1 ate 2 passo 1 faca
      escreva(matriz[lin,col], " ")
   fimpara
   escreval()
fimpara
fimalgoritmo
