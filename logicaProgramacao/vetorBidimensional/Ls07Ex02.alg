algoritmo "Atividade 3"
// Fun??o : Trazer resultados apenas de uma linha espec?fica
// Autor : Carlos Alessandro Laurindo
// Data : 13/04/2022
// Se??o de Declara??es
//Fa?a um programa que pe?a os valores inteiros para uma matriz 3x3 e pe?a ao
//usu?rio qual o n?mero da linha que ele deseja ver os valores e mostre na tela
//somente essa linha.
var
matriz: vetor [1..3,1..3] de inteiro
linha,coluna: inteiro
consulta: caractere
inicio
para linha de 1 ate 3 passo 1 faca
   para coluna de 1 ate 3 passo 1 faca
      escreva("Informe um n?mero inteiro: ")
      leia(matriz[linha,coluna])
   fimpara
fimpara
repita
   repita
      escreval("Informe a linha que deseja consultar (1, 2 ou 3): ")
      leia(linha)
   ate (linha = 1) ou (linha = 2) ou (linha = 3)
   para coluna de 1 ate 3 passo 1 faca
      escreva(matriz[linha,coluna], " ")
   fimpara
   escreval("Deseja consultar novamente? (n - n?o, outro - sim)")
   leia(consulta)
ate(consulta="n")
fimalgoritmo
