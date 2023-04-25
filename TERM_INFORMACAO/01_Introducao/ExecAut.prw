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
  /*
    Na fun��o Mata070, � passado dois parametros
    X � passado como aDados, um array com todos os campos e conte�dos
    Y � passado como a opera��o de inclus�o (Numero 3)
  */

//Iniciando transa��o e executando saldos iniciais
Begin Transaction //constrole de transa�ao
	MSExecAuto({|x, y| Mata070(x, y)}, aDados, 3)

	//Se houver erro, mostra menssagem
	If lMsErrorAuto
		MostraErro()//fun�ao protheus deve ser declarada como private
		DisarmTransaction() // caso de erro, desarme a transa�ao
	Else
		MsgInfo("Banco 00 cadastrado com sucesso", "Aten��o")
	Endif
End Transaction
RestArea(aArea)
Return
