algoritmo "semnome"
// Fun??o : Localizar a informa??o na vari?vel informada
// Autor : Carlos Alessandro Laurindo
// Data : 08/04/2022
// Fa?a uma solu??o que alimente um vetor com 10 valores inteiros e tamb?m que
//solicite ao usu?rio a entrada de dados de um valor inteiro qualquer. A solu??o
//dever? fazer uma busca do valor, informado pelo usu?rio, no vetor e imprima a
//posi??o em que este foi encontrado ou se n?o foi encontrado.
var
numeroSistema: vetor [1..10] de inteiro
numeroUsuario,contadora: inteiro
inicio
para contadora de 1 ate 10 passo 1 faca
   numeroSistema[contadora]<-randi(100)
   escreval(contadora,"?",numeroSistema[contadora])
fimpara
escreva("Informe um n?mero, entre 1 e 100: ")
leia(numeroUsuario)
para contadora de 1 ate 10 passo 1 faca
   se(numeroUsuario=numeroSistema[contadora]) entao
      escreval("O n?mero informado est? na posi??o: ",contadora)
   fimse
fimpara
se (numeroUsuario<> numeroSistema[1]) e(numeroUsuario<> numeroSistema[2]) e (numeroUsuario<> numeroSistema[3])e(numeroUsuario<> numeroSistema[4])e(numeroUsuario<> numeroSistema[5])e(numeroUsuario<> numeroSistema[6])e(numeroUsuario<> numeroSistema[7])e(numeroUsuario<> numeroSistema[8])e(numeroUsuario<> numeroSistema[9])e(numeroUsuario<> numeroSistema[10]) entao
   escreval("O n?mero informado n?o foi encontrado.")
fimse
fimalgoritmo
