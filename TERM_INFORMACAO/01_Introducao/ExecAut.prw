#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: ExecAuto
*********************************************************************************************/
User Function ExecAut()
  Local aArea      := GetArea()
  Local aDados     := {}
  Private lMsErrorAuto := .F.

  //Adiciona os dados do cadastro de bancos
  AADD(aDados, {"A6_COD",        "000",               NIL})
  AADD(aDados, {"A6_AGENCIA",    "00000",             NIL})
  AADD(aDados, {"A6_NUMCON",     "0000000000",        NIL})
  AADD(aDados, {"A6_NOME",       "BANCO DE TESTE",    NIL})

  //Iniciando transação e executando saldos iniciais
  Begin Transaction
    MSExecAuto({|x, y| Mata070(x, y)}, aDados, 3)

    //Se houver erro, mostra menssagem
    If lMsErrorAuto
      MostraErro()
      DisarmTransaction()
    Else
      MsgInfo("Banco 00 cadastrado com sucesso", "Atenção")
    Endif
  End Transaction
RestArea(aArea)
Return
