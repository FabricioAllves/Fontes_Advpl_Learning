#include "Protheus.ch"
#include "Rwmake.ch"

User Function IVisual()

	Local cTitulo := "MSDIALOG"
	Local cTexto  := "Tipo de cliente"
	Local cTipoCli    := Space(1)
	Local nOpca   := 0
	Private oDlg

	DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 080,300 PIXEL
	@ 001,001 TO 040, 150 OF oDlg PIXEL
	@ 010,010 SAY cTexto SIZE 55, 07 OF oDlg PIXEL
	@ 010,050 MSGET cTipoCli SIZE 55, 11 OF oDlg PIXEL 	PICTURE "@" VALID ACGC(@cTipoCli)
	DEFINE SBUTTON FROM 010, 120 TYPE 1 ACTION (nOpca := 1,oDlg:End()) ENABLE OF oDlg
	DEFINE SBUTTON FROM 020, 120 TYPE 2 ACTION (nOpca := 2,oDlg:End())ENABLE OF oDlg
	ACTIVATE MSDIALOG oDlg CENTERED

	If nOpca == 2
		RETURN
	ENDIF

	MsgInfo("O tipo foi :"+cTipoCli )
RETURN

//**************************************************
Static Function ACGC(cTipoCli)
	DbSelectArea("SC5")
	DbGoTop()
	While !SC5->(EoF()) 
		If C5_EMISSAO == Date() .And. C5_TIPOCLI == cTipoCli
			SC5->(RecLock("SC5", .F.))
			DbDelete()
			SC5->(MsUnLoock())
		EndIf
		SC5->(DbSkip())
	EndDo
	oDlg:Refresh()
Return
