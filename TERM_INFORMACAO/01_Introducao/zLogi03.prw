#Include "Totvs.ch"

/********************************************************************************************
*| As nomenclaturas utilizadas, geralemnte são
*|
*| AA   - Sigla da empresa
*| BBB  - Módulo da Função
*| X    - Tipo (Atualização, Consulta, Relatorio, Sequencia 87)
*| NN   - Sequencia, por exemplo: 
*| CBFATA01 -> Comando Baterias, FATuramento, Relatorio, Sêquencia
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
  MsgInfo("Estou na User Function", "Atençao")

  fFuncA()
  RestArea(aArea)
Return

Static Function fFuncA()

//Mostrando a mensagem de que esta na StaticFunction
  MsgInfo("Estou na Static Function", "Atençao")

Return

