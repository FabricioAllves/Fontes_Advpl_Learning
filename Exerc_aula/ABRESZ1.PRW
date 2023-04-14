#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"


User Function ABRESZ1()
	Local cCliente := "000002"
	Local cLoja    := "01"
	Local cProd    := "PR01"

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dbSelectArea("SZ1")
	dbSetOrder(1)
	//dbOrderNickName("Z1CLIENT")
	dbGoTop()
	If dbSeek(xFilial()+cCliente+cLoja)
		Alert("ACHOU")

		// DBSELECTAREA( "SA1" )
		// dbGoTo(2)
		// MsgInfo(A1_NOME)
		// MSUNLOCK()

		While !Eof()
			RecLock("SZ1",.F.)
			Z1_PRODUT   := "PR01"
			MsUnLock()
			dbSkip()
		End

	else
		RecLock("SZ1",.T.)
		Z1_FILIAL  := xFilial()
		Z1_CLIENT  := GETSXENUM("SZ1","Z1_CLIENT")
		Z1_LOJA    := "01"
		Z1_PRODUT  := "000001"
		Z1_UM      := "PC"
		Z1_UMCLI   := "CX"
		Z1_TIPO    := "M"
		Z1_FATOR   := 10
		MsUnLock()
		ConfirmSx8()
		dbSkip()

		DBCLOSEAREA()
	EndIf

// APAGAR O REGISTRO
	dbSelectArea("SZ1")
	dbSetOrder(2)
	//dbOrderNickName("Z1PRODUT")
	If dbSeek(xFilial()+cProd)
		dbGoTo(9)
		RecLock("SZ1",.F.)
		DBDELETE()
		MsUnLock()
	else
		Alert("NSEM REGISTRO PARA INCLUIR")
	EndIf

	RESET ENVIRONMENT
Return

/**
*
* dbSelectArea("SZ1")                      -> Para posicionar em uma tabela
* dbCloseArea()                            -> Fechar a tabela que foi aberta na ultima chamada
* dbCloseAll()                             -> Fechar todas as tabelas abertas
* dbSetOrder(1)                            -> Para pegar algum indice
* dbOrderNickName("Z1CLIENT")              -> Pega o indice da tabela pelo nickname
* dbSeek()                                 -> Para Buscar algum registro
* ReckLock("SZ1",.F.) - MsUnLock()         -> Para travar na tabela X e se for .F. incluir registro, se .F. alterar - MsUnLock() destravar tabela ao terminar
* dbDelete()                               -> Para deletar registro
* dbSkip                                   -> Pula para o proximo registro
* dbGoTop()                                -> Vai para o inicio do arquivo
* dbGoTo(posiçao numerica)                 -> Vai para o indice chamado dentro do parametro
* dbGoBottom()                             -> Vai para  ultimo indice
*/
