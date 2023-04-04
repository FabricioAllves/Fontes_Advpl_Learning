#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"


User Function PARAMETRO()
	Local dParam 

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

  dParam := GetMV("MV_ULMES") + 90

  PutMV("MV_ULMES",dParam)

  MsgInfo(dToc(GetMV("MV_ULMES")))



//19970101                                                                                                                                                                                                                                                  




	RESET ENVIRONMENT
Return

