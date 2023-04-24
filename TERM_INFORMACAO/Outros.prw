#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function ExecQuery
*| @type Function
*| @Author Fabricio H.
*| @Since 17/04/2023
*| Description: Fonte para aprender executar querys SQL(PLSQuerys)
*********************************************************************************************/
User Function forn()
  Local aArea := GetArea()
  Local ende := "new"
 // Local nCont := "000004

 new(@ende)
  
  //Enquanto houver dados da query 
  DbSelectArea("SA2")
  SA2->(DbSetOrder(1))
  SA2->(dbGoTop())
  While !SA2->(EoF())

    IF A2_TIPO != "F"
      Reclock("SA2", .F.)
        SA2->A2_END   := ende
      MsUnLock()
    EndIF
      
    SA2->(dbSkip())
     
  EndDo
  SA2->(dbCloseArea())


  
RestArea(aArea)
Return

Static function new(ende)

  ende := "SEM ENDERECO"
  MsgInfo("Alterado","Atençao")

Return
