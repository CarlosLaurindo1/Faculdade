algoritmo "Urna Eletrônica"
// Função : Realizar a contagem dos votos
// Autor : Carlos Alessandro Laurindo
// Data : 30/03/2022
// Seção de Declarações
//Você foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar a urna eletrônica da
//eleição da presidência do clube. O programa deve dar as seguintes opções de voto:
//Código              Candidato
//15                  Daniel
//75                  Jean
//0                   Voto em branco
//Outros valores      Voto nulo
//Nas eleições do JEC, nem sempre todos os sócios comparecem para votar, então não tem como saber
//quantos votos serão contabilizados. Ao final de cada voto, o programa deve perguntar ao usuário
//se ainda existe mais uma pessoa para votar, se sim, o usuário deve informar “SIM”, se não,
//informar “NÃO”. Ao final, deverá ser mostrado:
//Quantidade de votos para cada candidato, em branco e nulo;
//E o resultado final da eleição, que pode ser:
//Eleição cancelada: Se não houverem votantes ou se a soma dos votos nulos e brancos exceder a
//soma dos votos válidos (um voto é considerado válido quando for um voto em algum candidato);
//Empate: se a condição acima for falsa e a soma dos votos para o Daniel seja igual a soma dos votos para a Jean;
//Candidato eleito: se as condições acima forem falsas e a soma dos votos para um dos candidatos seja maior que a do outro.

var
candidato,totalVotantes,votoDaniel,votoJean,votosBrancos,votosNulos,brancosNulos:inteiro
continuarVotacao: caractere
inicio
escreval("Existiram votantes? (s - sim, outro - não)")
leia(continuarVotacao)
enquanto (continuarVotacao="s") faca
   escreval("Informe os dígitos de seu candidato: ")
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
      escreval("Você votou em branco.")
      votosBrancos<-votosBrancos+1
   outrocaso
      escreval("Você anulou o seu voto.")
      votosNulos<-votosNulos+1
   fimescolha
   escreval("Existem mais votantes? (n - Não, outro - Sim.)")
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
   escreval("Eleições canceladas. Houveram mais votos 'branco' ou 'nulo' do que votos válidos.")
senao
   se (brancosNulos<>(totalVotantes/2)) e (votoDaniel=votoJean)entao
      escreval("Houve empate nas eleições.")
   senao
      se(brancosNulos<=(totalVotantes/2))e(votoDaniel>votoJean)entao
         escreval("Daniel ganhou as eleições.")
      senao
         se (totalVotantes=0) entao
            escreval("Eleições canceladas, não houveram votantes.")
         senao
            escreval("Jean ganhou as eleições.")
         fimse
      fimse
   fimse
fimse

fimalgoritmo
