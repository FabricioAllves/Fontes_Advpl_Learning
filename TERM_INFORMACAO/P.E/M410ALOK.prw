#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: M410ALOK - Ao clicar no botao de Alteração de pedido de venda
*********************************************************************************************/
User Function M410ALOK()
  Local lRet := .T.
  Local Usr  := GetMv("MV_XUSRCOD")

  If cUserName $ Usr
    lRet := .T.
  Else
    MsgInfo("Usuario sem permissao para Alterar pedido de venda!!", "Atenção!")
    lRet := .F.
  EndIf

Return lRet
