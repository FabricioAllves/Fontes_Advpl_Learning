#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: Var PRIVATE  so funciona na funçao que foi chamada e em todas funçoes chamadas
*| dentro da funçao da variavel PRIVATE raiz
*********************************************************************************************/
User Function zLogin04()
  Local aArea := GetArea()
  Private varPrivate := 'Fabrico'

  U_fFuncA()
  RestArea(aArea)
Return

User Function fFuncA()
//Mostrando a mensagem da variavel private que esta function zLogin03
  MsgInfo(varPrivate, "Atençao")
  fFuncB()
Return

Static Function fFuncB()
//Mostrando a mensagem da variavel private que esta function zLogin03
  MsgInfo("Estou na funnçao B", "Atençao")
Return

User Function fFuncC()
//Aqui nessa funçao nao funcionara pois para que funciona essa funçao teria que ser chamada na funçao fFuncB()
//onde a variavel PRIVATE foi criada
  MsgInfo("rgg"+varPrivate, "Atençao")
Return
