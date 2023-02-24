algoritmo "Cadastro de funcionários"
//Função: Realizar o cadastro e atualização de cadastro dos funcionários da empresa
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
ESCREVA ("Número: ")
LEIA(numeroCasa)
Escreva ("Doador de sangue (SIM/NÃO): ")
LEIA(doadorSangue)
ESCREVA ("Valor do último salário bruto: ")
leia(valorSalarioBruto)
ESCREVAL("Cadastro salvo com sucesso!")
ESCREVAL("Cadastramos o funcionário: ",nomeCompleto,".")
ESCREVAL("O qual pode ser contatado através do número de telefone: ",telefone,", ou e-mail: ",eMail,".")
ESCREVAL("Ele(a) reside em: ",logradouro,", número: ",numeroCasa,".")
ESCREVAL("Confirmamos que ele ",doadorSangue," é doador de sangue.")
ESCREVAL("E seu último salário bruto foi de: R$",valorSalarioBruto)
fimalgoritmo
