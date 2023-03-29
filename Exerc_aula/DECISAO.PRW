#Include "protheus.ch"

User Function DECISAO()

	Local nNumero   := 0
	Private nCount    := 0
	Private lContinua := .T.

	While lContinua == .T.
		nCount++
		If nCount == 10
			lContinua := .F.
		EndIf
	End


	For nNumero := 1 to 10
		If nNumero == 7
			Exit
		EndIf
	next



Return
