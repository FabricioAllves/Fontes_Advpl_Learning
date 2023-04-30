#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description:  P.E - MT410TOK - Validação ao confirmar o pedido de venda
*********************************************************************************************/
User Function MT410TOK()
  Local lRet := .T.

  DbSelectArea("SC5")
  If M->C5_TPFRETE == 'F'
    MsgInfo("Tipo de frete bloqueado!", "Inserir outro tipo de frete.")
    lRet := .F.
  Endif  
  SC5->(DbCloseArea())
Return lRet
