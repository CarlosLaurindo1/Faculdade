algoritmo "Urna Eletr?nica"
// Fun??o : Realizar a contagem dos votos
// Autor : Carlos Alessandro Laurindo
// Data : 30/03/2022
// Se??o de Declara??es
//Voc? foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar a urna eletr?nica da
//elei??o da presid?ncia do clube. O programa deve dar as seguintes op??es de voto:
//C?digo              Candidato
//15                  Daniel
//75                  Jean
//0                   Voto em branco
//Outros valores      Voto nulo
//Nas elei??es do JEC, nem sempre todos os s?cios comparecem para votar, ent?o n?o tem como saber
//quantos votos ser?o contabilizados. Ao final de cada voto, o programa deve perguntar ao usu?rio
//se ainda existe mais uma pessoa para votar, se sim, o usu?rio deve informar ?SIM?, se n?o,
//informar ?N?O?. Ao final, dever? ser mostrado:
//Quantidade de votos para cada candidato, em branco e nulo;
//E o resultado final da elei??o, que pode ser:
//Elei??o cancelada: Se n?o houverem votantes ou se a soma dos votos nulos e brancos exceder a
//soma dos votos v?lidos (um voto ? considerado v?lido quando for um voto em algum candidato);
//Empate: se a condi??o acima for falsa e a soma dos votos para o Daniel seja igual a soma dos votos para a Jean;
//Candidato eleito: se as condi??es acima forem falsas e a soma dos votos para um dos candidatos seja maior que a do outro.

var
candidato,totalVotantes,votoDaniel,votoJean,votosBrancos,votosNulos,brancosNulos:inteiro
continuarVotacao: caractere
inicio
escreval("Existiram votantes? (s - sim, outro - n?o)")
leia(continuarVotacao)
enquanto (continuarVotacao="s") faca
   escreval("Informe os d?gitos de seu candidato: ")
   escreval("(15 - Daniel, 75 - Jean, 0 - Branco, outros - nulo)")
   leia(candidato)
   escolha(candidato)
   caso 15
      escreval("O candidato escolhido foi: Daniel.")
      votoDaniel<-votoDaniel+1
   caso 75
      escreval("O candidato escolhido foi: Jean.")
      votoJean<-votoJean+1
   caso 0
      escreval("Voc? votou em branco.")
      votosBrancos<-votosBrancos+1
   outrocaso
      escreval("Voc? anulou o seu voto.")
      votosNulos<-votosNulos+1
   fimescolha
   escreval("Existem mais votantes? (n - N?o, outro - Sim.)")
   totalVotantes<-totalVotantes+1
   leia(continuarVotacao)
fimenquanto
brancosNulos<-votosNulos+votosBrancos
Escreval("Foram contabilizados:",totalVotantes," votos.")
escreval(votoDaniel," votos para Daniel.")
escreval(votoJean," votos para Jean.")
escreval(votosBrancos," votos brancos.")
escreval(votosNulos," votos nulos.")
se(brancosNulos>=(totalVotantes/2)) e (totalVotantes>0) entao
   escreval("Elei??es canceladas. Houveram mais votos 'branco' ou 'nulo' do que votos v?lidos.")
senao
   se (brancosNulos<>(totalVotantes/2)) e (votoDaniel=votoJean)entao
      escreval("Houve empate nas elei??es.")
   senao
      se(brancosNulos<=(totalVotantes/2))e(votoDaniel>votoJean)entao
         escreval("Daniel ganhou as elei??es.")
      senao
         se (totalVotantes=0) entao
            escreval("Elei??es canceladas, n?o houveram votantes.")
         senao
            escreval("Jean ganhou as elei??es.")
         fimse
      fimse
   fimse
fimse

fimalgoritmo
