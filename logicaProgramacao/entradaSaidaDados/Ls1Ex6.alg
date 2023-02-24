Algoritmo "Cálculo de proventos"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022


Var
nomeVendedor : caractere
valorSalarioBruto,totalVendasLoja,valorComissao,valorSalarioLiquido,comissaoSobVendas,valorComissaoLoja : real
pencentualSobVendas,veiculosVendidos : inteiro

Inicio
ESCREVAL ("Nome do vendedor: ")
LEIA(nomeVendedor)
ESCREVAL ("Quantidade de carros vendidos no mês pelo vendedor: ")
LEIA(veiculosVendidos)
ESCREVAL ("Total de vendas da loja: R$")
LEIA(totalVendasLoja)
valorSalarioBruto <- 500.00
valorComissao <- 50.00
comissaoSobVendas <- valorComissao*veiculosVendidos
pencentualSobVendas <- 5
valorComissaoLoja <- totalVendasLoja*5/100
valorSalarioLiquido <- valorSalarioBruto+valorComissao*veiculosVendidos+valorComissaoLoja
ESCREVAL ("Segue o valor líquido devido ao vendedor: ",nomeVendedor)
ESCREVAL ("Salário bruto: (+) R$",valorSalarioBruto:2:2)
ESCREVAL ("Total de carros vendidos: ",veiculosVendidos," totalizando comissão sob suas vendas: (+) R$",comissaoSobVendas:2:2,".")
ESCREVAL ("Comissão sobre o total de vendas da loja: (+) R$",valorComissaoLoja:2:2)
ESCREVAL ("Resultando em: (=) R$",valorSalarioLiquido:2:2)

Fimalgoritmo
