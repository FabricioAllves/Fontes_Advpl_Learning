#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

//                 dbEval ->  para trabalhar com tabelas

User Function AEVAL()
	Local nx := 0
	Local aCampos := {}
  Local aTitulos := {}
	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	AADD(aCampos,"C5_FILIAL")
  AADD(aCampos,"C5_NUM")

  SX3->(dbSetOrder(2))
  For nX:=1 To Len(aCampos)
    SX3->(dbSeek(aCampos[nX]))
    AADD(aTitulos,SX3->X3_TITULO)
  Next nX

  //O mesmo pode ser re-escrito com o uso da funçao AEVAL():#COMMAND
  aTitulo:={}
  SX3->(dbGoTop())
  aEval(aCampos,{|x| SX3->(dbSeek(x)),AADD(aTitulos,Alltrim(SX3->X3_TITULO))})

	RESET ENVIRONMENT

Return
