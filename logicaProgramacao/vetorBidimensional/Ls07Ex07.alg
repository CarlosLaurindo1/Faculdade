algoritmo "Atividade 7"
// Fun??o :
// Autor :
// Data : 25/04/2022
// Se??o de Declara??es
// Jogos de tabuleiro s?o atividades comuns de entretenimento na vida cotidiana
//das pessoas. Uma de suas caracter?sticas ? a necessidade do uso de um tabuleiro
//com localiza??es bem definidas para o posicionamento de pe?as, podendo indicar
//tamb?m as fases do jogo. No livro O Homem que Calculava, de Malba Tahan (S?o
//Paulo: Record, 2002, p. 120), h? uma hist?ria na qual um rei deveria efetuar
//o pagamento pelos servi?os de um de seus conselheiros, dando-lhe uma certa
//quantidade de gr?os de trigo a ser calculada da seguinte forma: coloca-se 1
//gr?o de trigo na primeira casa do tabuleiro, 2 na segunda casa, 4 na terceira
//casa, 8 na quarta casa e assim dobrando-se sucessivamente at? a ?ltima casa.
//Considerando o tabuleiro 4 x 4 ilustrado acima, contendo a indica??o da ordem
//das casas, construa um ?nico algoritmo que:
//calcule, armazene em uma estrutura e escreva em ordem a quantidade de gr?os de trigo em cada casa do tabuleiro;
//calcule, armazene em uma vari?vel e escreva a quantidade total de gr?os de trigo presentes no tabuleiro.
//	Utilize vetores para armazenar os valores de cada posi??o do tabuleiro.
//	As quest?es A e B devem ser demonstradas no c?digo do programa.

var
matriz: vetor [1..4,1..4] de inteiro
linha,coluna,variavelTeste,somaCampos:inteiro
inicio


//Para armazenar os dados em seus devidos campos, na vari?vel matriz, construimos o tabuleiro, utilizando linhas e colunas.
//declaramos a vari?vel a seguir como 1, para iniciar a grava??o armazenando o primeiro valor
variavelTeste<-1
//Ap?s armazenado, utilizamos a contadora para cada um dos campos no tabuleiro
para linha de 1 ate 4 passo 1 faca
   para coluna de 1 ate 4 passo 1 faca
      //A matriz ? declarada com a variavelTeste
      matriz[linha,coluna]<-variavelTeste
      //Escrevemos o valor em sua posi??o no tabuleiro
      escreva(matriz[linha,coluna]," ")
      //Calculamos o valor da vari?vel para o preenchimento no campo seguinte multiplicando-o por 2
      variavelTeste<-variavelTeste*2
      //Na vari?vel de armazenamento fazemos a soma dos campos j? mencionados
      somaCampos<-matriz[linha,coluna]+somaCampos
   fimpara
   escreval()
   //aqui temos a RESPOSTA da A, uma vez que listou todos os campos em sua ordem no tabuleiro
fimpara
//Ap?s a listagem apresentamos o resultado da soma, informando a vari?vel de armazenamento utilizada anteriormente
//Assim temos a RESPOTA da B
Escreva("A soma dos valores ?: ",somaCampos)

fimalgoritmo
