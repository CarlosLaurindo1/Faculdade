Algoritmo "Finalização de venda"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022
Var
valorTotalVenda : real
quantidadeParcelas : inteiro

Inicio
ESCREVAL ("O valor total de vendas, é de: R$")
LEIA(valorTotalVenda)
ESCREVAL ("Deseja parcelar em quantas vezes?")
LEIA(quantidadeParcelas)
ESCREVAL ("Sua compra foi de R$",valorTotalVenda," você optou por parcelar em ", quantidadeParcelas, " vezes.")
ESCREVAL ("O valor mensal de suas parcelas é de R$",valorTotalVenda/quantidadeParcelas, ".")

Fimalgoritmo
