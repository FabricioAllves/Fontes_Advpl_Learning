#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"


User Function SOFTL()
	Local X       := 0

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dbSelectArea("SA1")
	dbSetOrder(1)

	For x:=1 To 10


	

			RecLock("SA1",.T.)
			A1_FILIAL    := xFilial()
			A1_COD       := GETSXENUM("SA1","A1_COD")
			A1_LOJA      := "01"
			A1_NOME      := "TESTE DE NUMERACAO"+cValToChar(x)
			A1_PESSOA    := "F"
			A1_NREDUZ    := "TESTE"+cValToChar(x)
			A1_END       := "RUA TESTE"
			A1_BAIRRO    := "TESTE"
			A1_TIPO      := "F"
			A1_EST       := "SP"
			A1_COD_MUN   := "00105"
			A1_MUN       := "ADAMANTINA"
			A1_NATUREZ   := "1.00001"
			MsUnLock()

			ConfirmSx8()

	Next

	RESET ENVIRONMENT


Return


