#Include "Totvs.ch"


/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: Ponto de Entrada executado ap�s gera��o do pedido de venda   
*********************************************************************************************/
User Function M410STTS()
  Local aArea    := GetArea()
  Local _nOper := PARAMIXB[1]

/*
  3 - Inclus�o
  4 - Altera��o
  5 - Exclus�o
  6 - C�pia
  7 - Devolu��o de Compras
*/


If (_nOper == 3)
	RECLOCK("SC5", .F. )
    C5_TPFRETE := "C"
  MSUNLOCK()
EndIf

RestArea(aArea)
Return
