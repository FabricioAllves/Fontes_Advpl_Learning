#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

//                 dbEval ->  para trabalhar com tabelas

User Function DBEVAL()
	Local cTab := "12"
	Local nCnt := 0
	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dbSelectArea("SX5")  //Opening table
	dbSetOrder(1) //opening of the index(indice)
	dbGotop() //to the beginning of the file/table
	While !Eof() .And. X5_FILIAL == xFilial("SX5") .And. X5_TABELA <=cTab
		nCnt++
		dbSkip()
	EndDo

	dbSelectArea("SX5")
	dbGoTop()
	dbEval( { |x| nCnt++ },,{||X5_FILIAL==xFilial("SX5") .And. X5_TABELA<=cTab})

	RESET ENVIRONMENT

Return


/**
* !Eof     -> enquanto nao for o fim...
*/



