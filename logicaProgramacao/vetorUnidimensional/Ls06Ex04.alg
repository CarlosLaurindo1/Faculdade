algoritmo "semnome"
// Função : Localizar a informação na variável informada
// Autor : Carlos Alessandro Laurindo
// Data : 08/04/2022
// Faça uma solução que alimente um vetor com 10 valores inteiros e também que
//solicite ao usuário a entrada de dados de um valor inteiro qualquer. A solução
//deverá fazer uma busca do valor, informado pelo usuário, no vetor e imprima a
//posição em que este foi encontrado ou se não foi encontrado.
var
numeroSistema: vetor [1..10] de inteiro
numeroUsuario,contadora: inteiro
inicio
para contadora de 1 ate 10 passo 1 faca
   numeroSistema[contadora]<-randi(100)
   escreval(contadora,"º",numeroSistema[contadora])
fimpara
escreva("Informe um número, entre 1 e 100: ")
leia(numeroUsuario)
para contadora de 1 ate 10 passo 1 faca
   se(numeroUsuario=numeroSistema[contadora]) entao
      escreval("O número informado está na posição: ",contadora)
   fimse
fimpara
se (numeroUsuario<> numeroSistema[1]) e(numeroUsuario<> numeroSistema[2]) e (numeroUsuario<> numeroSistema[3])e(numeroUsuario<> numeroSistema[4])e(numeroUsuario<> numeroSistema[5])e(numeroUsuario<> numeroSistema[6])e(numeroUsuario<> numeroSistema[7])e(numeroUsuario<> numeroSistema[8])e(numeroUsuario<> numeroSistema[9])e(numeroUsuario<> numeroSistema[10]) entao
   escreval("O número informado não foi encontrado.")
fimse
fimalgoritmo
