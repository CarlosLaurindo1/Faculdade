Algoritmo "Cálculo de segundos"
// Aluno   : Carlos Alessandro Laurindo
// Data   : 10/03/2022


Var
qtdeHoras,qtdeMinutos,qtdeSegundos,totalSegundos,conversaoHoras,conversaoMinutos  : inteiro

Inicio
ESCREVAL ("Informe as horas: ")
LEIA(qtdeHoras)
ESCREVAL ("Informe os minutos: ")
LEIA(qtdeMinutos)
ESCREVAL ("Informe os segundos")
LEIA(qtdeSegundos)
conversaoHoras <- qtdeHoras*60*60
conversaoMinutos  <- qtdeMinutos*60
totalSegundos <- conversaoHoras+conversaoMinutos+qtdeSegundos
ESCREVAL ("Em",qtdeHoras," horas, ",qtdeMinutos," minutos e ", qtdeSegundos, " segundos. Temos o total ",totalSegundos," segundos.")


Fimalgoritmo
