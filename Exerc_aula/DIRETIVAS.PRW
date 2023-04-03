#Include "Protheus.ch"

User Function DIRETIVAS()
	Local nValor1    := 10
	Local nValor2    := 20
	Local nResultado := 0

	nResultado:= RECEBE(@nValor1,nValor2)
  ALERT(Resultado)

Return

//-----------------------------------------------------------------

Static Function RECEBE(nValor1,nValor2)
	Local nRetorno := 0
  nValor1 := 20

  nRetorno := nValor1*nValor2


Return(nRetorno)
