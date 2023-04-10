//------------------------------------------------------------------------
//Autor: Washington Caetano Rodrigues
//Empresa: Libert Solutions - www.libertsolutions.com.br
//Data: 21/09/2017
//Função: CADZU1.prw.PRW
//Descrição: Rotina para cadastro de produto x fornecedor customizado
// Foi necessário criar rotina própria visto da necessidade de vincular o mesmo
// produto várias vezes ao mesmo fornecedor, porém com código de fornecedor diferente.
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

//tabela que será utilizada
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
		MsgInfo("Exclusão concluída com sucesso!")
	Endif

	RestArea(aArea)
Return lRet
