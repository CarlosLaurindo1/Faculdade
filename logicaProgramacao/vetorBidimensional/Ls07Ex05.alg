algoritmo "ATIVIDADE 5"
// Fun??o :
// Autor :
// Data : 19/04/2022
// Se??o de Declara??es
//Uma empresa de cosm?ticos comercializa cinco diferentes tipos de produtos e os
//armazena em uma estante de 5 x 5 posi??es. Em cada posi??o da estante, pode
//ficar armazenada apenas uma caixa com um desses produtos. Para facilitar sua
//identifica??o, os produtos foram codificados da seguinte forma:
//1xampu 2condicionador 3hidratante 4tintura 5demaquilante 0vazio
//Nessa situa??o e considerando o desenvolvimento de um sistema para gerenciar a
//organiza??o dos produtos na estante, estabeleceu-se a declara??o de vari?veis a seguir.
//Com base nessa declara??o e considerando a codifica??o dos produtos exposta,
//apresente um algoritmo (Visualg ou Java) que: Leia os c?digos dos produtos e armazene-os na matriz Estante
//Realize a contagem e imprima a quantidade de caixas de cada tipo de produto na estante.
//Insira coment?rios nos c?digo explicando as linhas que apresentam as solicita??es acima.

var
estante: vetor [1..5,1..5] de inteiro
produtos: vetor [0..5] de caractere
contador: vetor [0..5] de inteiro
i,j: inteiro
inicio
//Para identificar a posi??o dos produtos no estoque realizamos o input do c?digo de acordo com a matriz
para i de 1 ate 5 passo 1 faca
   para j de 1 ate 5 passo 1 faca
      //Validamos o valor da matriz, aplicamos a regra para o nome do produto e utilizamos a vari?vel contador como vari?vel de acumulativa
      repita
         escreva("Informe o c?digo do produto:")
         leia(estante[i,j])
      ate (estante[i,j] = 0) ou (estante[i,j] = 1) ou (estante[i,j] = 2) ou (estante[i,j] = 3) ou (estante[i,j] = 4) ou (estante[i,j] = 5)
      //Para realizar a contagem, utilizamos a posi??o do produto na estante, e adicionamos-os na variavel de armazenamento "Contador"
      contador[estante[i,j]]<-contador[estante[i,j]]+1
   fimpara
   escreval()
fimpara

//Para que consigamos trazer a impress?o definindo quais s?o os produtos, os declaramos de acordo com o c?digo do item na estante, qual o produto pertencente
//Importante que o mesmo seja colocada fora da estrutura do Para fa?a, para que o mesmo n?o seja lido novamente e interfira no processamento.
produtos[0]<-"vazio"
produtos[1]<-"xampu"
produtos[2]<-"condicionador"
produtos[3]<-"hidratante"
produtos[4]<-"tintura"
produtos[5]<-"demaquilante"

//para encontrarmos a posi??o em estoque, o usu?rio poder? ver os dados em tela para confirmar os valores depois.
para i de 1 ate 5 passo 1 faca
   para j de 1 ate 5 passo 1 faca
      escreva(estante[i,j], " ")
   fimpara
   escreval()
fimpara
//por fim, considerando a vari?vel de armazenamento e o produto vinculado, adicionamos
Escreval("Segue o resultado do invent?rio: ")
escreval("Existem ",contador[0]," espa?o(s) vazio(s).")
escreval(produtos[1]," total estoque:",contador[1])
escreval(produtos[2]," total estoque:",contador[2])
escreval(produtos[3]," total estoque:",contador[3])
escreval(produtos[4]," total estoque:",contador[4])
escreval(produtos[5]," total estoque:",contador[5])
fimalgoritmo
