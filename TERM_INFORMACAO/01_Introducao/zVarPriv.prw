#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: Var PRIVATE  so funciona na fun�ao que foi chamada e em todas fun�oes chamadas
*| dentro da fun�ao da variavel PRIVATE raiz
*********************************************************************************************/
User Function zLogin04()
  Local aArea := GetArea()
  Private varPrivate := 'Fabrico'

  U_fFuncA()
  RestArea(aArea)
Return

User Function fFuncA()
//Mostrando a mensagem da variavel private que esta function zLogin03
  MsgInfo(varPrivate, "Aten�ao")
  fFuncB()
Return

Static Function fFuncB()
//Mostrando a mensagem da variavel private que esta function zLogin03
  MsgInfo("Estou na funn�ao B", "Aten�ao")
Return

User Function fFuncC()
//Aqui nessa fun�ao nao funcionara pois para que funciona essa fun�ao teria que ser chamada na fun�ao fFuncB()
//onde a variavel PRIVATE foi criada
  MsgInfo("rgg"+varPrivate, "Aten�ao")
Return
