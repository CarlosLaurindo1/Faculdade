Algoritmo "C?lculo de proventos"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022


Var
nomeVendedor : caractere
valorSalarioBruto,totalVendasLoja,valorComissao,valorSalarioLiquido,comissaoSobVendas,valorComissaoLoja : real
pencentualSobVendas,veiculosVendidos : inteiro

Inicio
ESCREVAL ("Nome do vendedor: ")
LEIA(nomeVendedor)
ESCREVAL ("Quantidade de carros vendidos no m?s pelo vendedor: ")
LEIA(veiculosVendidos)
ESCREVAL ("Total de vendas da loja: R$")
LEIA(totalVendasLoja)
valorSalarioBruto <- 500.00
valorComissao <- 50.00
comissaoSobVendas <- valorComissao*veiculosVendidos
pencentualSobVendas <- 5
valorComissaoLoja <- totalVendasLoja*5/100
valorSalarioLiquido <- valorSalarioBruto+valorComissao*veiculosVendidos+valorComissaoLoja
ESCREVAL ("Segue o valor l?quido devido ao vendedor: ",nomeVendedor)
ESCREVAL ("Sal?rio bruto: (+) R$",valorSalarioBruto:2:2)
ESCREVAL ("Total de carros vendidos: ",veiculosVendidos," totalizando comiss?o sob suas vendas: (+) R$",comissaoSobVendas:2:2,".")
ESCREVAL ("Comiss?o sobre o total de vendas da loja: (+) R$",valorComissaoLoja:2:2)
ESCREVAL ("Resultando em: (=) R$",valorSalarioLiquido:2:2)

Fimalgoritmo
