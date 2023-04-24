#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: 
*********************************************************************************************/
User Function TmpTable()
  Local aArea       := GetArea()
  Local cAliasTmp   := "TMP_XPTO"

  //Cria a tabela temporaria
  oTempTable := FWTemporaryTable():New(cAliasTmp)

  //Adiciona no array das colunas as que serao incluidas (Nome do campo, Tamanho, Decimais)
  aFields := {}
  //               nome      tipo   Tamanho   casas_decimais
  AADD( aFields, {"FILIAL",   "C",     2,         0})
  AADD( aFields, {"NOME",     "C",     50,        0})
  AADD( aFields, {"VALOR",    "N",     8,         2})
  AADD( aFields, {"EMISSAO",  "D",     8,         0})

  //Define as colunas usadas
  oTempTable:SetFields( aFields )

  //Cria as colunas usadas
  oTempTable:AddIndex("INDICE1", {"FILIAL", "NOME"})

  //Efetua a criação da tabela
  oTempTable:Create()

  RecLock(cAliasTmp, .T.)
    (cAliasTmp)->FILIAL := ""
    (cAliasTmp)->NOME := "TESTE"
    (cAliasTmp)->VALOR := 30
    (cAliasTmp)->EMISSAO := Date()
  (cAliasTmp)->(MsUnLock())

  Alert("Nome real da temporaria: [" + oTempTable:GetRealName() + "]")

  //Excluindo a temporaria
  oTempTable:Delete()
  RestArea(aArea)
Return
