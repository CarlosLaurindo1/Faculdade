algoritmo "semnome"
// Função :
// Autor :
// Data : 25/04/2022
// Seção de Declarações
var
tabuleiro: vetor [1..3,1..3] de caractere
posicaoTela: vetor [1..3,1..3] de inteiro
//posicao1, posicao2: vetor [1..3,1..3] de inteiro
jogador1,jogador2,jogadorDaVez,vencedor,novoJogo: caractere
linha,coluna,quantidadeJogadas,posicao: inteiro
velha:logico
inicio
//Usar repetição com validação lógica para os jogadores
//Validar posição
//Não usar o para faça para realizar a inclusão do campo no tabuleiro
//Ao finalizar a repetição, realizar a troca do jogador

//Player vs Player
//Jogador 1, irá determinar o seu símbolo
repita
   Escreval("JOGO DA VELHA: ")
   repita
      Escreva("Escolha o seu símbolo (O ou X): ")
      leia(jogador1)
      se (jogador1="O") entao
         escreval("Jogador 1, seu símbolo é: O.")
         jogador2<-"X"
         escreval("Jogador 2, seu símbolo é: X.")
      senao
         se (jogador1="X") entao
            escreval("Jogador 1, seu símbolo é: X.")
            jogador2<-"O"
            escreval("Jogador 2, seu símbolo é: O.")
         senao
            escreval("Simbolo informado é inválido.")
         fimse
      fimse
   ate(jogador1="O")ou(jogador1="X")

   //Impressão das posições no tabuleiro
   posicaoTela[1,1]<-1
   posicaoTela[1,2]<-2
   posicaoTela[1,3]<-3
   posicaoTela[2,1]<-4
   posicaoTela[2,2]<-5
   posicaoTela[2,3]<-6
   posicaoTela[3,1]<-7
   posicaoTela[3,2]<-8
   posicaoTela[3,3]<-9

   tabuleiro[1,1]<-" "
   tabuleiro[1,2]<-" "
   tabuleiro[1,3]<-" "
   tabuleiro[2,1]<-" "
   tabuleiro[2,2]<-" "
   tabuleiro[2,3]<-" "
   tabuleiro[3,1]<-" "
   tabuleiro[3,2]<-" "
   tabuleiro[3,3]<-" "
   para linha de 1 ate 3 passo 1 faca
      escreval(" - - -")
      para coluna de 1 ate 3 passo 1 faca
         Escreva(posicaoTela[linha,coluna])
      fimpara
      escreva(" ")
      escreval()
   fimpara

   //Jogadas
   escreval()
   escreval("Vamos começar!")
   escreval()

   //O jogo Foi iniciado, portanto, usamos o repita, até que uma das formas de ganhar tenha sido atingida

   jogadorDaVez<-jogador1
   quantidadeJogadas<-0
   repita
      repita
         //Validar o jogador se a jogada for impar recebe o símbolo do jogador1 senao o jogador 2, reduzindo o escolha caso
         quantidadeJogadas<-quantidadeJogadas+1
         se (quantidadeJogadas mod 2 = 1) entao
            jogadorDaVez<-jogador1
         senao
            jogadorDaVez<-jogador2
         fimse

         Escreval(jogadorDaVez," - Selecione a posição no tabuleiro: ")
         leia(posicao)

         se (posicao=1) e (tabuleiro[1,1]=" ") entao
            tabuleiro[1,1]<-jogadorDaVez
         senao
            se (posicao=2) e (tabuleiro[1,2]=" ") entao
               tabuleiro[1,2]<-jogadorDaVez
            senao
               se (posicao=3) e (tabuleiro[1,3]=" ") entao
                  tabuleiro[1,3]<-jogadorDaVez
               senao
                  se (posicao=4) e (tabuleiro[2,1]=" ") entao
                     tabuleiro[2,1]<-jogadorDaVez
                  senao
                     se (posicao=5) e (tabuleiro[2,2]=" ") entao
                        tabuleiro[2,2]<-jogadorDaVez
                     senao
                        se (posicao=6) e (tabuleiro[2,3]=" ") entao
                           tabuleiro[2,3]<-jogadorDaVez
                        senao
                           se (posicao=7) e (tabuleiro[3,1]=" ") entao
                              tabuleiro[3,1]<-jogadorDaVez
                           senao
                              se (posicao=8) e (tabuleiro[3,2]=" ") entao
                                 tabuleiro[3,2]<-jogadorDaVez
                              senao
                                 se (posicao=9) e (tabuleiro[3,3]=" ") entao
                                    tabuleiro[3,3]<-jogadorDaVez
                                 senao
                                    escreval("Posição já preenchida. Escolha uma posição vazia.")
                                    quantidadeJogadas<-quantidadeJogadas-1
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse

         para linha de 1 ate 3 passo 1 faca
            //escolha caso é independente do para faça (revisar)
            escreval(" - - -")
            para coluna de 1 ate 3 passo 1 faca
               escreva(" ",tabuleiro[linha,coluna])
            fimpara
            escreva(" ")
            escreval()
         fimpara
      ate (posicao=(posicaoTela[1,1])) ou (posicao=(posicaoTela[1,2])) ou (posicao=(posicaoTela[1,3])) ou (posicao=(posicaoTela[2,1]))ou (posicao=(posicaoTela[2,2])) ou (posicao=(posicaoTela[2,3]))ou (posicao=(posicaoTela[3,1]))ou  (posicao=(posicaoTela[3,2]))ou (posicao=(posicaoTela[3,3]))

      se (tabuleiro[1,1]= jogadorDaVez)e (tabuleiro[1,2] = jogadorDaVez) e (tabuleiro[1,3] = jogadorDaVez) entao
         vencedor<-jogadorDaVez
      senao
         se  (tabuleiro[2,1]= jogadorDaVez)e (tabuleiro[2,2] = jogadorDaVez) e (tabuleiro[2,3] = jogadorDaVez) entao
            vencedor<-jogadorDaVez
         senao
            se  (tabuleiro[3,1]= jogadorDaVez)e (tabuleiro[3,2] = jogadorDaVez) e (tabuleiro[3,3] = jogadorDaVez) entao
               vencedor<-jogadorDaVez
            senao
               se  (tabuleiro[1,1]= jogadorDaVez)e (tabuleiro[2,2] = jogadorDaVez) e (tabuleiro[3,3] = jogadorDaVez) entao
                  vencedor<-jogadorDaVez
               senao
                  se  (tabuleiro[1,3]= jogadorDaVez)e (tabuleiro[2,2] = jogadorDaVez) e (tabuleiro[3,1] = jogadorDaVez) entao
                     vencedor<-jogadorDaVez
                  senao
                     se  (tabuleiro[1,1]= jogadorDaVez)e (tabuleiro[2,1] = jogadorDaVez) e (tabuleiro[3,1] = jogadorDaVez) entao
                        vencedor<-jogadorDaVez
                     senao
                        se  (tabuleiro[1,2]= jogadorDaVez)e (tabuleiro[2,2] = jogadorDaVez) e (tabuleiro[3,2] = jogadorDaVez) entao
                           vencedor<-jogadorDaVez
                        senao
                           se  (tabuleiro[1,3]= jogadorDaVez)e (tabuleiro[2,3] = jogadorDaVez) e (tabuleiro[3,3] = jogadorDaVez) entao
                              vencedor<-jogadorDaVez
                           senao
                              se (quantidadeJogadas=9) entao
                                 vencedor<-"Velha"
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   ate (vencedor=jogadorDaVez) ou (vencedor="Velha")

   se (vencedor<>"Velha") e (jogadorDaVez=jogador1) entao
      escreval("Parabéns, Jogador 1. Você é o vencedor")
   senao
      se (vencedor<>"Velha") e (jogadorDaVez=jogador2) entao
         escreval("Parabéns, Jogador 2. Você é o vencedor")
      senao
         escreval("Parece que houve um empate. DEU VELHA.")
      fimse
   fimse

   escreval("Deseja jogar novamente (N - Não, Outro - Sim)?")
   leia(novoJogo)
   se (novoJogo<>"N") entao
      tabuleiro[1,1]<-""
      tabuleiro[1,2]<-""
      tabuleiro[1,3]<-""
      tabuleiro[2,1]<-""
      tabuleiro[2,2]<-""
      tabuleiro[2,3]<-""
      tabuleiro[3,1]<-""
      tabuleiro[3,2]<-""
      tabuleiro[3,3]<-""
      vencedor<-""
   fimse
   limpatela
ate (novoJogo = "N")


fimalgoritmo
