#Include "Totvs.ch"


/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: MT410ALT - É executado após a gravação das alterações.
*********************************************************************************************/
User Function MT410ALT()


/*
  4 - Alteração
*/

  DBSELECTAREA("SC5")
  RECLOCK("SC5", .F. )
    C5_TPFRETE := "C"
  MSUNLOCK()

  	MsgInfo("Pedido de venda Alterado com sucesso", "Ok")



Return
