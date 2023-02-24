algoritmo "ATIVIDADE 5"
// Função :
// Autor :
// Data : 19/04/2022
// Seção de Declarações
//Uma empresa de cosméticos comercializa cinco diferentes tipos de produtos e os
//armazena em uma estante de 5 x 5 posições. Em cada posição da estante, pode
//ficar armazenada apenas uma caixa com um desses produtos. Para facilitar sua
//identificação, os produtos foram codificados da seguinte forma:
//1xampu 2condicionador 3hidratante 4tintura 5demaquilante 0vazio
//Nessa situação e considerando o desenvolvimento de um sistema para gerenciar a
//organização dos produtos na estante, estabeleceu-se a declaração de variáveis a seguir.
//Com base nessa declaração e considerando a codificação dos produtos exposta,
//apresente um algoritmo (Visualg ou Java) que: Leia os códigos dos produtos e armazene-os na matriz Estante
//Realize a contagem e imprima a quantidade de caixas de cada tipo de produto na estante.
//Insira comentários nos código explicando as linhas que apresentam as solicitações acima.

var
estante: vetor [1..5,1..5] de inteiro
produtos: vetor [0..5] de caractere
contador: vetor [0..5] de inteiro
i,j: inteiro
inicio
//Para identificar a posição dos produtos no estoque realizamos o input do código de acordo com a matriz
para i de 1 ate 5 passo 1 faca
   para j de 1 ate 5 passo 1 faca
      //Validamos o valor da matriz, aplicamos a regra para o nome do produto e utilizamos a variável contador como variável de acumulativa
      repita
         escreva("Informe o código do produto:")
         leia(estante[i,j])
      ate (estante[i,j] = 0) ou (estante[i,j] = 1) ou (estante[i,j] = 2) ou (estante[i,j] = 3) ou (estante[i,j] = 4) ou (estante[i,j] = 5)
      //Para realizar a contagem, utilizamos a posição do produto na estante, e adicionamos-os na variavel de armazenamento "Contador"
      contador[estante[i,j]]<-contador[estante[i,j]]+1
   fimpara
   escreval()
fimpara

//Para que consigamos trazer a impressão definindo quais são os produtos, os declaramos de acordo com o código do item na estante, qual o produto pertencente
//Importante que o mesmo seja colocada fora da estrutura do Para faça, para que o mesmo não seja lido novamente e interfira no processamento.
produtos[0]<-"vazio"
produtos[1]<-"xampu"
produtos[2]<-"condicionador"
produtos[3]<-"hidratante"
produtos[4]<-"tintura"
produtos[5]<-"demaquilante"

//para encontrarmos a posição em estoque, o usuário poderá ver os dados em tela para confirmar os valores depois.
para i de 1 ate 5 passo 1 faca
   para j de 1 ate 5 passo 1 faca
      escreva(estante[i,j], " ")
   fimpara
   escreval()
fimpara
//por fim, considerando a variável de armazenamento e o produto vinculado, adicionamos
Escreval("Segue o resultado do inventário: ")
escreval("Existem ",contador[0]," espaço(s) vazio(s).")
escreval(produtos[1]," total estoque:",contador[1])
escreval(produtos[2]," total estoque:",contador[2])
escreval(produtos[3]," total estoque:",contador[3])
escreval(produtos[4]," total estoque:",contador[4])
escreval(produtos[5]," total estoque:",contador[5])
fimalgoritmo
