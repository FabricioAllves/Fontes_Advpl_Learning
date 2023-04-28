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
    Na função Mata010, é passado dois parametros
    X é passado como aDados, um array com todos os campos e conteúdos
    Y é passado como a operação de inclusão (Numero 3)
  */
//Iniciando transação e executando saldos iniciais
Begin Transaction //constrole de transaçao
	MSExecAuto({|x, y| Mata010(x, y)}, aDados, 3)

	//Se houver erro, mostra menssagem
	If lMsErrorAuto
		MostraErro()//funçao protheus deve ser declarada como private
		DisarmTransaction() // caso de erro, desarme a transaçao
	Else
		MsgInfo("Produto cadastrado com sucesso", "Atenção")
	Endif
End Transaction
RestArea(aArea)
Return
