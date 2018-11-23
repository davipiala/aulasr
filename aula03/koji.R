BrFlights2

mini <- BrFlights2[sample(nrow(BrFlights2), 100), ]
# factor
mini$Codigo.Tipo.Linha <- factor( mini$Codigo.Tipo.Linha  )
mini$Situacao.Voo <- factor( mini$Situacao.Voo  )

# diff
mini$Atraso.Partida <- mini$Partida.Real - mini$Partida.Prevista
mini$Atraso.Chegada <- mini$Chegada.Real - mini$Chegada.Prevista
mini$Tempo.Viagem <- mini$Chegada.Real - mini$Partida.Real
summary(mini$Atraso.Partida)
summary(mini)

# BrFlights2
BrFlights2$Atraso.Partida <- BrFlights2$Partida.Real - BrFlights2$Partida.Prevista
BrFlights2$Atraso.Chegada <- BrFlights2$Chegada.Real - BrFlights2$Chegada.Prevista

