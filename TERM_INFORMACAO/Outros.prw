#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function ExecQuery
*| @type Function
*| @Author Fabricio H.
*| @Since 17/04/2023
*| Description: Fonte para aprender executar querys SQL(PLSQuerys)
*********************************************************************************************/
User Function ExecQuery()
  Local aArea := GetArea()
  Local nCont := 0
  
  //Enquanto houver dados da query 
  DBSELECTAREA("SA2")
  SA2->(DbSetOrder(1))
  While !SA2->(EoF()) .and. nCont <= 2
      if SA2->A2_MSBLQL <> "1"
        nCont += 1
        RecLock('SA2', .F.)
        SA2->A2_NREDUZ := "SEM NOME REDUZIDO"
        SA2->(MsUnlock())
      endif 
    SA2->(dbSkip())
  EndDo
  SA2->(dbCloseArea())

  // If nAtual < 1
  //   MsgInfo("Sem dados")
  // else
  //   MsgInfo(cValToChar(nAtual) + " fornecedor(es) encontrado(s)!", "Atenção")
  // EndIf

  
RestArea(aArea)
Return
