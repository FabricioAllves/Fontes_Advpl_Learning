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
  Local html := "<h6>Fabricio</h6>" + CRLF + "Henrique"

  
  MsgInfo(html, "Atençao")

  
  RestArea(aArea)
Return


