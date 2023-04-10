#include "protheus.ch"

Static cTexto := "ESTATICA"

User Function Principal()
	Local nNumero := 10
	Private dData := Date()

	If nNumero >= 10.5
		Alert("OK")
	EndIf

	Filha()
RETURN

Static Function Filha()
	Local nNumero := 20
	Private lContinua := .T.
	Public aDados := {1,3,7}

	cTexto += " NOAVAMENTE"+Space(10)
	dData := dData + nNumero
	dData += nNumero

	

	U_Secun()
return

User Function Secun()
	//Local nNumero := 30

	aDados := {0,0,0}

	cTexto := cTexto - " SEM ESPAÇO"

return
