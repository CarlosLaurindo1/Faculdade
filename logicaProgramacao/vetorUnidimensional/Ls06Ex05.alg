algoritmo "Atividade 4"
// Fun??o :
// Autor :  Carlos Alessandro Laurindo
// Data : 07/04/2022
// Se??o de Declara??es
//Um s?ndico de condom?nio deseja fazer um pequeno cadastro de todas as fam?lias
//que moram em seus 4 apartamentos. Para tanto, ele precisa inserir no software
//as seguintes informa??es: sobrenome da fam?lia, apartamento, quantidade de
//moradores e a renda da fam?lia. Ap?s inseridas as informa??es, o s?ndico deve
//poder pesquisar as fam?lias digitando o apartamento desejado, e o programa deve
//mostrar todas as informa??es desta fam?lia, e ainda a renda m?dia por morador.
//Ele deve poder realizar essa pesquisa quantas vezes quiser. Quando o s?ndico
//n?o quiser ver outra fam?lia, o programa deve ser encerrado.
var
numApartamento,apCadastrado,quantMoradores: vetor [1..4] de inteiro
sobrenomeFamilia: vetor [1..4] de caractere
salarioFamilia,salarioMedio: vetor [1..4] de real
contadora,apartamento,validacao: inteiro
repetido: logico
opcao: caractere

inicio
para contadora de 1 ate 4 passo 1 faca
   repita
      repetido<-FALSO
      escreva("Informe o n?mero do apartamento: ")
      leia(numApartamento[contadora])
      //numApartamento[contadora]<-apCadastrado[contadora]
      para validacao de 1 ate contadora-1 passo 1 faca
         se (numApartamento[contadora]=numApartamento[validacao]) entao
            repetido<-VERDADEIRO
            escreval("N?mero do aparamento j? cadastrado.")
         fimse
      fimpara
   ate(repetido=FALSO)
   escreva("Informe o sobrenome da fam?lia: ")
   leia(sobrenomeFamilia[contadora])
   escreva("Informe a quantidade de moradores: ")
   leia(quantMoradores[contadora])
   escreva("Informe o sal?rio total familiar: ")
   leia(salarioFamilia[contadora])
   salarioMedio[contadora]<-salarioFamilia[contadora]/quantMoradores[contadora]
   limpatela
fimpara
escreval("Todos os apartamentos foram cadastrados!")
repita
   escreval("Informe o n?mero do apartamento ? consultar: ")
   leia(apartamento)
   para contadora de 1 ate 4 passo 1 faca
      se(apartamento=numApartamento[contadora]) entao
         escreval("O apartamento selecionado foi: ",numApartamento[contadora],".")
         escreval("Sobrenome da fam?lia: ",sobrenomeFamilia[contadora],".")
         escreval("Este apartamento possui ",quantMoradores[contadora]," moradores.")
         escreval("O total do sal?rio da fam?lia ? de: R$",salarioFamilia[contadora]:2:2,".")
         escreval("A m?dia salarial da fam?lia ? de R$",salarioMedio[contadora]:2:2,".")
      senao
         se(apartamento<>numApartamento[1]) e (apartamento<>numApartamento[2]) e (apartamento<>numApartamento[3]) e (apartamento<>numApartamento[4]) entao
            escreval("O apartamento informado, n?o foi cadastrado!")
            interrompa
         fimse
      fimse
   fimpara
   escreva("Deseja consultar outro apartamento? (n - n?o, outro - sim)")
   leia(opcao)
   limpatela
ate(opcao="n")
escreva("N?o cadastrado")


fimalgoritmo

