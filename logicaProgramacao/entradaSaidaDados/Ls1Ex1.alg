algoritmo "Cadastro de funcion?rios"
//Fun??o: Realizar o cadastro e atualiza??o de cadastro dos funcion?rios da empresa
//Autor: Carlos Alessandro Laurindo
var
nomeCompleto,telefone,eMail,logradouro,doadorSangue : caractere
numeroCasa : inteiro
valorSalarioBruto : real
inicio
ESCREVA ("Nome Completo: ")
LEIA(nomeCompleto)
ESCREVA ("Telefone: ")
LEIA(telefone)
ESCREVA ("E-mail: ")
LEIA(eMail)
ESCREVA ("Logradouro: ")
LEIA(logradouro)
ESCREVA ("N?mero: ")
LEIA(numeroCasa)
Escreva ("Doador de sangue (SIM/N?O): ")
LEIA(doadorSangue)
ESCREVA ("Valor do ?ltimo sal?rio bruto: ")
leia(valorSalarioBruto)
ESCREVAL("Cadastro salvo com sucesso!")
ESCREVAL("Cadastramos o funcion?rio: ",nomeCompleto,".")
ESCREVAL("O qual pode ser contatado atrav?s do n?mero de telefone: ",telefone,", ou e-mail: ",eMail,".")
ESCREVAL("Ele(a) reside em: ",logradouro,", n?mero: ",numeroCasa,".")
ESCREVAL("Confirmamos que ele ",doadorSangue," ? doador de sangue.")
ESCREVAL("E seu ?ltimo sal?rio bruto foi de: R$",valorSalarioBruto)
fimalgoritmo
