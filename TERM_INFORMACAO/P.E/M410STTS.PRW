#Include "Totvs.ch"


/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: Ponto de Entrada executado após geração do pedido de venda   
*********************************************************************************************/
User Function M410STTS()
  Local nOper := PARAMIXB[1]

  If (nOper == 4)
    MsgInfo("Pedido de venda Alterado com sucesso", "Ok")
    DbSelectArea("SC5")
    RecLock("SC5", .F.)
      C5_TPFRETE := "C"
    SC5->(MsUnlock())
  EndIf

Return
