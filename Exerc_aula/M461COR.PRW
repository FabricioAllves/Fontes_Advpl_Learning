#Include "protheus.ch"
User Function M461COR()



// Local aNewLegend := {} // Vari�vel que conter� o retorno das novas regras para a aplica��o nas legendas do browse da rotina

// aNewLegend := { {'!EMPTY(POSICIONE("SC5",1,xFilial("SC5")+SC9->C9_PEDIDO,"C5_XDENTRE")) .And. SC5->C5_XDENTRE > Date()', "BR_PINK"},;
//                 {ParamIXB[01,01], ParamIXB[01,02]},;   // A regra padr�o 1 para os 'Pedidos de Venda Liberados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuar� a ser representado na legenda da cor VERDE.
//                 {ParamIXB[02,01], ParamIXB[02,02]},;   // A regra padr�o 2 para os 'Pedidos de Venda Faturados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuar� a ser representado na legenda da cor VERMELHA.
//                 {ParamIXB[03,01], ParamIXB[03,02]}}        // Nova regra para os 'Pedidos de Venda com bloqueio' acrescido do teste do do campo customizado C9_MYFIELD=="2". O seu status ser� representado na legenda da cor MARROM.
// Return aNewLegend

Local aNewLegend := {} // Vari�vel que conter� o retorno das novas regras para a aplica��o nas legendas do browse da rotina

aNewLegend := { {'!EMPTY(POSICIONE("SC5",1,xFilial("SC5")+SC9->C9_PEDIDO,"C5_FECENT")) .And. SC5->C5_FECENT > Date()', "BR_PINK"},;
                {ParamIXB[01,01], ParamIXB[01,02]},;   // A regra padr�o 1 para os 'Pedidos de Venda Liberados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuar� a ser representado na legenda da cor VERDE.
                {ParamIXB[02,01], ParamIXB[02,02]},;   // A regra padr�o 2 para os 'Pedidos de Venda Faturados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuar� a ser representado na legenda da cor VERMELHA.
                {ParamIXB[03,01], ParamIXB[03,02]}}        // Nova regra para os 'Pedidos de Venda com bloqueio' acrescido do teste do do campo customizado C9_MYFIELD=="2". O seu status ser� representado na legenda da cor MARROM.
Return aNewLegend


