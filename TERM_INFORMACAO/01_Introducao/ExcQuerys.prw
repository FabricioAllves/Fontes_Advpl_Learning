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
  Local cQrySA2 := ""
  //Local nAtual := 0



  //Selecionando os fornecedores via query diretamente do banco de dados
  cQrySA2 := " SELECT TOP 2 " + CRLF
  cQrySA2 += "    A2_COD, " + CRLF
  cQrySA2 += "    A2_NOME " + CRLF
  cQrySA2 += " FROM " + CRLF
  cQrySA2 += "    " + RetSQLName('SA2') + " SA2 " + CRLF
  cQrySA2 += " WHERE" + CRLF
  cQrySA2 += "    A2_FILIAL = '" + FWxFilial('SA2') + "'" + CRLF
  cQrySA2 += "    AND A2_MSBLQL != '1' " + CRLF
  cQrySA2 += "    AND SA2.D_E_L_E_T_ = ' ' " + CRLF
  cQrySA2 += " ORDER BY " + CRLF
  cQrySA2 += "    A2_COD " + CRLF

  //Executando a query
  PLSQuery(cQrySA2, "QRY_SA2")

  //Enquanto houver dados da query 
  While ! QRY_SA2->(EoF())
    //nAtual++
    
    While ! SA2->(EoF()) .And. SA2->A2_COD == QRY_SA2->A2_COD
      RecLock('SA2', .F.)
        DBDELETE()
      SA2->(MsUnlock())
      SA2->(dbSkip())
    EndDo

    QRY_SA2->(dbSkip())
  EndDo
  QRY_SA2->(dbCloseArea())

  // If nAtual < 1
  //   MsgInfo("Sem dados")
  // else
  //   MsgInfo(cValToChar(nAtual) + " fornecedor(es) encontrado(s)!", "Atenção")
  // EndIf

  
RestArea(aArea)
Return
