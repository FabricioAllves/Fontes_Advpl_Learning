#Include "Totvs.ch"



User Function CRMA980()
	Local aArea := FWGetArea()
	Local xRet := .T.
	Local cIdPonto := ""
	Local nAtual

	//Se tiver parametros

	//Para a inclusao de botoes na ControlBar
	If cIdPonto == "BUTTONBAR"
		aMenuUsr := u_MA030BUT()
		xRet     := {}

		For nAtual := 1 To Len(aMenuUsr)
			aAdd(xRet, {"* " + aMenuUsr[nAtual][4], "rg", aMenuUsr[nAtual][2], "dg"})
		Next
	EndIf


	FWRestArea(aArea)
Return xRet
