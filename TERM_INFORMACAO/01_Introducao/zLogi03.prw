#Include "Totvs.ch"

/********************************************************************************************
*| As nomenclaturas utilizadas, geralemnte s�o
*|
*| AA   - Sigla da empresa
*| BBB  - M�dulo da Fun��o
*| X    - Tipo (Atualiza��o, Consulta, Relatorio, Sequencia 87)
*| NN   - Sequencia, por exemplo: 
*| CBFATA01 -> Comando Baterias, FATuramento, Relatorio, S�quencia
*********************************************************************************************/


/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: 
*********************************************************************************************/
User Function zLogin03()
  Local aArea := GetArea()

  //Mostrando a mensagem de que esta na UserFunction
  MsgInfo("Estou na User Function", "Aten�ao")

  fFuncA()
  RestArea(aArea)
Return

Static Function fFuncA()

//Mostrando a mensagem de que esta na StaticFunction
  MsgInfo("Estou na Static Function", "Aten�ao")

Return

