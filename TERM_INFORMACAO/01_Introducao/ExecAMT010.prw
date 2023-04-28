#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: ExecAuto
*********************************************************************************************/
User Function ExecMt10()
  Local aArea      := GetArea()
  Local aDados     := {}
  Private lMsErrorAuto := .F.

  //Adiciona os dados do cadastro de bancos
  AADD(aDados, {"B1_COD",       "000000",           NIL})
  AADD(aDados, {"B1_DESC",      "PRODUTO TESTE",    NIL})
  AADD(aDados, {"B1_TIPO",      "PR",               NIL})
  AADD(aDados, {"B1_UM",        "CX",               NIL})
  AADD(aDados, {"B1_LOCPAD",    "01",               NIL})

  /*
    Na fun��o Mata010, � passado dois parametros
    X � passado como aDados, um array com todos os campos e conte�dos
    Y � passado como a opera��o de inclus�o (Numero 3)
  */
//Iniciando transa��o e executando saldos iniciais
Begin Transaction //constrole de transa�ao
	MSExecAuto({|x, y| Mata010(x, y)}, aDados, 3)

	//Se houver erro, mostra menssagem
	If lMsErrorAuto
		MostraErro()//fun�ao protheus deve ser declarada como private
		DisarmTransaction() // caso de erro, desarme a transa�ao
	Else
		MsgInfo("Produto cadastrado com sucesso", "Aten��o")
	Endif
End Transaction
RestArea(aArea)
Return
