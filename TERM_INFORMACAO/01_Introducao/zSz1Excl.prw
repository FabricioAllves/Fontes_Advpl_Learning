#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: 
*********************************************************************************************/
User Function ExclSz1()
  Local aArea  := GetArea()
  Local nCount := 0

  DBSELECTAREA("SZ1")
  SZ1->(DBGOTOP())
  while !SZ1->(EoF())
    If SZ1->Z1_UMCLI == "CX"
      RecLock("SZ1", .F.)
      dbDelete()
    SZ1->(MsUnLock())
    EndIf
    nCount++
    SZ1->(dbSkip()) 
  endDo
  MsgInfo("Concluido com sucesso!", "Atençao")
  RestArea(aArea)
Return
