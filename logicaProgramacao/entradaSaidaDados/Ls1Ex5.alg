Algoritmo "Cálculo de impostos"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022


Var
impostoRepresentante,impostoGoverno : inteiro
valorCusto,totalCustoImp,valorImpRep,valorImpGov : real

Inicio
ESCREVAL ("Informe o percentual de impostos do representante: ")
LEIA(impostoRepresentante)
ESCREVAL ("Informe o percentual de impostos do governo: ")
LEIA(impostoGoverno)
ESCREVAL ("Informe o custo da Calça Jeans: R$")
LEIA(valorCusto)
valorImpRep <- valorCusto*impostoRepresentante/100
valorImpGov <- valorCusto*impostoGoverno/100
totalCustoImp <- valorImpGov+valorImpRep+valorCusto
ESCREVAL("O valor total do item é: R$",totalCustoImp,".")
ESCREVAL("Total de impostos (governo): R$",valorImpGov)
ESCREVAL("Total de impostos (representate): R$",valorImpRep)

Fimalgoritmo
