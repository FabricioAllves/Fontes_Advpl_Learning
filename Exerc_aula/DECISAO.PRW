#Include "protheus.ch"

User Function DECISAO()

	Local nNumero:=nCount:= 0
	Local lContinua := .T.
	Local aArray1:= {0,0,0}
	Local aArray2:= {0}
	Local nPos := 0

	While lContinua == .T.
		nCount++

		aArray1[1]:= nCount
		aArray1[2]:= nCount/2
		aArray1[3]:= nCount**2

		If nCount == 10
			lContinua := .F.
		EndIf
	End


	For nNumero := 1 to 10
		AADD(aArray2,{nNuemro})
		If nNumero == 7
			Exit
		EndIf
	next

	nPos := ASCAN(aArray2,{|x| x[1] == 4})
	ADEL(aArray2,nPos)
	ASIZE(aArray2, Len(Array2[nPos]-1))


Return
