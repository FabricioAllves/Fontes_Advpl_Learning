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
  Local html := "<h6>Fabricio</h6>" + CRLF + "Henrique"

  
  MsgInfo(html, "Aten�ao")

  
  RestArea(aArea)
Return


