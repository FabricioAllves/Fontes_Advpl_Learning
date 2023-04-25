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
    Na função Mata070, é passado dois parametros
    X é passado como aDados, um array com todos os campos e conteúdos
    Y é passado como a operação de inclusão (Numero 3)
  */

//Iniciando transação e executando saldos iniciais
Begin Transaction //constrole de transaçao
	MSExecAuto({|x, y| Mata070(x, y)}, aDados, 3)

	//Se houver erro, mostra menssagem
	If lMsErrorAuto
		MostraErro()//funçao protheus deve ser declarada como private
		DisarmTransaction() // caso de erro, desarme a transaçao
	Else
		MsgInfo("Banco 00 cadastrado com sucesso", "Atenção")
	Endif
End Transaction
RestArea(aArea)
Return
