algoritmo "Atividade 4"
// Fun??o : Identificar valores
// Autor : Carlos Alessandro Laurindo
// Data : 18/04/2022
// Se??o de Declara??es
//Fa?a um programa que carregue os valores das vendas de uma loja no primeiro
//semestre de 2021. Considere para tal, uma matriz [6,4], sendo que s?o 06 meses
//e 04 semanas por m?s. Ao final, mostre na tela:
//Total de vendas do semestre
//Total vendido em cada m?s

var
matriz: vetor [1..6,1..4] de real
somaMensal : vetor [1..6] de real
mes,semana : inteiro
somaSemestral: real
inicio
para mes de 1 ate 6 passo 1 faca
   para semana de 1 ate 4 passo 1 faca
      escreva("Informe o valor recebido na",semana,"? semana, do",mes,"? m?s: ")
      leia(matriz[mes,semana])
      somaMensal[mes]<-somaMensal[mes]+matriz[mes,semana]
   fimpara
   somaSemestral<-somaSemestral+somaMensal[mes]
fimpara
limpatela
para mes de 1 ate 6 passo 1 faca
   escreval("Foram recebidos os seguintes valores no",mes,"? m?s:")
   para semana de 1 ate 4 passo 1 faca
      escreva("R$",matriz[mes,semana]:2:2," ")
   fimpara
   escreval()
   escreval("Total do",mes,"? m?s: R$",somaMensal[mes]:2:2)
   escreval()
fimpara
Escreval("Total recebido no semestre: R$",somaSemestral:2:2)

fimalgoritmo
