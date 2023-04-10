//------------------------------------------------------------------------
//Autor: Washington Caetano Rodrigues
//Empresa: Libert Solutions - www.libertsolutions.com.br
//Data: 21/09/2017
//Fun��o: CADZU1.prw.PRW
//Descri��o: Rotina para cadastro de produto x fornecedor customizado
// Foi necess�rio criar rotina pr�pria visto da necessidade de vincular o mesmo
// produto v�rias vezes ao mesmo fornecedor, por�m com c�digo de fornecedor diferente.
//------------------------------------------------------------------------

#include "totvs.ch"
#include "fwmvcdef.ch"
User Function CADZU1()
Local oBrw
Private cCadastro := OemToAnsi("Produto x Fornecedor")
Private aRotina := {}
Private cAlias := "SZ1"

//Instaciamento
oBrw := FWMBrowse():New()

//Menu
aAdd( aRotina, { 'Visualizar', 'AxVisual', 0, 2, 0, NIL } )
aAdd( aRotina, { 'Incluir' , 'AxInclui', 0, 3, 0, NIL } )
aAdd( aRotina, { 'Alterar' , 'AxAltera', 0, 4, 0, NIL } )
aAdd( aRotina, { 'Excluir' , 'U_VldExc', 0, 5, 0, NIL } )

//tabela que ser� utilizada
oBrw:SetAlias("SZ1")

//Titulo
oBrw:SetDescription( "Tela MVC" )

//ativa
oBrw:Activate()
return


Static Function VldExc(cAlias,nReg,nOpc)
	Local lRet := .T.
	Local aArea := GetArea()
	Local nOpcao := 0

	nOpcao := AxExclui(cAlias,nReg,nOpc)

	If nOpcao == 1
		MsgInfo("Exclus�o conclu�da com sucesso!")
	Endif

	RestArea(aArea)
Return lRet
