Algoritmo "C?lculo do pre?o de venda"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022


Var
custoProduto : real
margem : inteiro
vendaFinal : real

Inicio
margem <- 35
ESCREVAL ("Insira o custo do produto: R$")
LEIA(custoProduto)
vendaFinal <- custoProduto*margem/100+custoProduto
ESCREVAL ("O custo deste produto ? de R$", custoProduto," considerando a margem de ",margem,"%")
ESCREVAL ("O pre?o de venda deste produtos ? de R$", vendaFinal:2:2)

Fimalgoritmo
