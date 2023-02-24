algoritmo "Atividade 4"
// Função :
// Autor :  Carlos Alessandro Laurindo
// Data : 07/04/2022
// Seção de Declarações
//Um síndico de condomínio deseja fazer um pequeno cadastro de todas as famílias
//que moram em seus 4 apartamentos. Para tanto, ele precisa inserir no software
//as seguintes informações: sobrenome da família, apartamento, quantidade de
//moradores e a renda da família. Após inseridas as informações, o síndico deve
//poder pesquisar as famílias digitando o apartamento desejado, e o programa deve
//mostrar todas as informações desta família, e ainda a renda média por morador.
//Ele deve poder realizar essa pesquisa quantas vezes quiser. Quando o síndico
//não quiser ver outra família, o programa deve ser encerrado.
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
      escreva("Informe o número do apartamento: ")
      leia(numApartamento[contadora])
      //numApartamento[contadora]<-apCadastrado[contadora]
      para validacao de 1 ate contadora-1 passo 1 faca
         se (numApartamento[contadora]=numApartamento[validacao]) entao
            repetido<-VERDADEIRO
            escreval("Número do aparamento já cadastrado.")
         fimse
      fimpara
   ate(repetido=FALSO)
   escreva("Informe o sobrenome da família: ")
   leia(sobrenomeFamilia[contadora])
   escreva("Informe a quantidade de moradores: ")
   leia(quantMoradores[contadora])
   escreva("Informe o salário total familiar: ")
   leia(salarioFamilia[contadora])
   salarioMedio[contadora]<-salarioFamilia[contadora]/quantMoradores[contadora]
   limpatela
fimpara
escreval("Todos os apartamentos foram cadastrados!")
repita
   escreval("Informe o número do apartamento à consultar: ")
   leia(apartamento)
   para contadora de 1 ate 4 passo 1 faca
      se(apartamento=numApartamento[contadora]) entao
         escreval("O apartamento selecionado foi: ",numApartamento[contadora],".")
         escreval("Sobrenome da família: ",sobrenomeFamilia[contadora],".")
         escreval("Este apartamento possui ",quantMoradores[contadora]," moradores.")
         escreval("O total do salário da família é de: R$",salarioFamilia[contadora]:2:2,".")
         escreval("A média salarial da família é de R$",salarioMedio[contadora]:2:2,".")
      senao
         se(apartamento<>numApartamento[1]) e (apartamento<>numApartamento[2]) e (apartamento<>numApartamento[3]) e (apartamento<>numApartamento[4]) entao
            escreval("O apartamento informado, não foi cadastrado!")
            interrompa
         fimse
      fimse
   fimpara
   escreva("Deseja consultar outro apartamento? (n - não, outro - sim)")
   leia(opcao)
   limpatela
ate(opcao="n")
escreva("Não cadastrado")


fimalgoritmo

