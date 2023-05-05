#include "protheus.ch"

user function CRIASXE()
	Local cNum := NIL
	Local aArea := getarea()
	Local aArea2 := {}
	Local cAlias    := "SA1"
	Local cCpoSx8   := "A1_COD"
	Local cAliasSx8 := ""
	Local nOrdSX8   := paramixb[4]
	Local cUsa := "SE1"
// colocar os alias que irão permitir a execução do P.E.
	if cAlias $ cUsa .and.  ! ( Empty(cAlias) .and. empty(cCpoSx8) .and. empty(cAliasSx8) )	.and.;
			qout(cAlias + "-" + cCpoSx8 + "-" + cAliasSx8 + "-" + str(nOrdSX8))

		dbselectarea(cAlias)
		aArea2 := getarea()
		dbsetorder(nOrdSX8)
		dbseek(xfilial()+"Z")
		dbskip(-1)
		cNum := &(cCpoSx8)
		cnum := soma1(cNum)
	endIf
// fazer o tratamento aqui para a numeracao	
	MsgGet2( "Indique o numero correto para a tabela:" + calias, "Campo:"+cCposx8, @cNum, , , )
	restarea(aArea2)
	restarea(aArea)
return cNum


