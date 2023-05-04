#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: 
*********************************************************************************************/
User Function zOO03()
  Local aArea := FWGetArea()

  fDialogMS()  //ANTIGO
  fDialogT()   //MODERNO MAIS USADO E BEM DOCUMENTADO
  fDialogFW()  //MODERNO RECENTE POREM POUCO DOCUMENTADO

  FWRestArea(aArea)
Return

Static Function fDialogMS()
  Local oDlgAux
  Local nJanAlt := 200
  Local nJanLarg := 400
  Local cJanTitulo := "Tela usando MsDialog"

  //Criando a janela
  DEFINE MSDIALOG oDlgAux TITLE cJanTitulo FROM 000, 000 TO nJanAlt, nJanLarg COLORS 0, 16777215 PIXEL

  //Ativando a janela
  ACTIVATE MSDIALOG oDlgAux CENTERED
Return

Static Function fDialogT
  Local oDlgAux
  Local nJanAlt     := 200
  Local nJanLarg    := 400
  Local lDimPixel   := .T.
  Local lCentraliz  := .T.
  Local bBlocoIni   := {||}
  Local cJanTitulo  := "Tela usando TDialog"

  //Cria a dialog
  oDlgAux := TDialog():New(0, 0, nJanAlt, nJanLarg, cJanTitulo, , , , , , /**/, , , lDimPixel)

  //ativa e exibe a janela
  oDlgAux:Activate(, , , lCentraliz, , , bBlocoIni)

Return

Static Function fDialogFW
  Local oDlgAux
  Local nJanAlt := 100
  Local nJanLarg := 200
  Local bBlocoTst := {|| FWAlertInfo("Clicou no botão escrito 'Teste'", "Botão Teste")}
  Local cJanTitulo := "Tela usando FWDialogModal"

  //Instancia a classe, criando uma janela
  oDlgAux := FWDialogModal():New()
  oDlgAux:SetTitle(cJanTitulo)
  oDlgAux:SetSize(nJanAlt, nJanLarg)
  oDlgAux:EnableFormBar(.T.)
  oDlgAux:CreateDialog()
  oDlgAux:CreateFormBar()
  oDlgAux:AddButton("Teste", bBlocoTst, "Teste", , .T., .F., .T.,)

Return
