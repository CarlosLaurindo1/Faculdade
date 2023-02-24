algoritmo "Atividade 7"
// Função :
// Autor :
// Data : 25/04/2022
// Seção de Declarações
// Jogos de tabuleiro são atividades comuns de entretenimento na vida cotidiana
//das pessoas. Uma de suas características é a necessidade do uso de um tabuleiro
//com localizações bem definidas para o posicionamento de peças, podendo indicar
//também as fases do jogo. No livro O Homem que Calculava, de Malba Tahan (São
//Paulo: Record, 2002, p. 120), há uma história na qual um rei deveria efetuar
//o pagamento pelos serviços de um de seus conselheiros, dando-lhe uma certa
//quantidade de grãos de trigo a ser calculada da seguinte forma: coloca-se 1
//grão de trigo na primeira casa do tabuleiro, 2 na segunda casa, 4 na terceira
//casa, 8 na quarta casa e assim dobrando-se sucessivamente até a última casa.
//Considerando o tabuleiro 4 x 4 ilustrado acima, contendo a indicação da ordem
//das casas, construa um único algoritmo que:
//calcule, armazene em uma estrutura e escreva em ordem a quantidade de grãos de trigo em cada casa do tabuleiro;
//calcule, armazene em uma variável e escreva a quantidade total de grãos de trigo presentes no tabuleiro.
//	Utilize vetores para armazenar os valores de cada posição do tabuleiro.
//	As questões A e B devem ser demonstradas no código do programa.

var
matriz: vetor [1..4,1..4] de inteiro
linha,coluna,variavelTeste,somaCampos:inteiro
inicio


//Para armazenar os dados em seus devidos campos, na variável matriz, construimos o tabuleiro, utilizando linhas e colunas.
//declaramos a variável a seguir como 1, para iniciar a gravação armazenando o primeiro valor
variavelTeste<-1
//Após armazenado, utilizamos a contadora para cada um dos campos no tabuleiro
para linha de 1 ate 4 passo 1 faca
   para coluna de 1 ate 4 passo 1 faca
      //A matriz é declarada com a variavelTeste
      matriz[linha,coluna]<-variavelTeste
      //Escrevemos o valor em sua posição no tabuleiro
      escreva(matriz[linha,coluna]," ")
      //Calculamos o valor da variável para o preenchimento no campo seguinte multiplicando-o por 2
      variavelTeste<-variavelTeste*2
      //Na variável de armazenamento fazemos a soma dos campos já mencionados
      somaCampos<-matriz[linha,coluna]+somaCampos
   fimpara
   escreval()
   //aqui temos a RESPOSTA da A, uma vez que listou todos os campos em sua ordem no tabuleiro
fimpara
//Após a listagem apresentamos o resultado da soma, informando a variável de armazenamento utilizada anteriormente
//Assim temos a RESPOTA da B
Escreva("A soma dos valores é: ",somaCampos)

fimalgoritmo
