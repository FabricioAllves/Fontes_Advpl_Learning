#Include "protheus.ch"
User Function M461COR()

	Local aNewLegend := {} // Variável que conterá o retorno das novas regras para a aplicação nas legendas do browse da rotina
//****************************************************************************************************************************************************
//---- O ParamIXB recebeu a configuração das REGRAS PADRÕES das legendas na forma de um array bidimensional
// ParamIXB := {{'Empty(SC9->C9_BLEST) .And. Empty(SC9->C9_BLCRED) .And. SC9->C9_BLWMS$"05,06,07, "',    "ENABLE"},;  // Pedido de Venda Liberado
//              {'SC9->C9_BLEST=="10" .And. SC9->C9_BLCRED=="10" .And. SC9->C9_BLWMS$"05,06,07, "',      "DISABLE"},; // Pedido de Venda Faturado
//              {'!(Empty(SC9->C9_BLEST) .And. Empty(SC9->C9_BLCRED) .And. SC9->C9_BLWMS$"05,06,07, ")', "BR_AZUL"}}  // Pedido de Venda com bloqueio
//****************************************************************************************************************************************************
	aNewLegend := { {'!EMPTY(POSICIONE("SC5",1,xFilial("SC5")+SC9->C9_PEDIDO,"C5_XDENTRE")) .And. SC5->C5_XDENTRE > Date()', "BR_PINK"},;
		{ParamIXB[01,01], ParamIXB[01,02]},;   // A regra padrão 1 para os 'Pedidos de Venda Liberados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuará a ser representado na legenda da cor VERDE.
	{ParamIXB[02,01], ParamIXB[02,02]},;   // A regra padrão 2 para os 'Pedidos de Venda Faturados' foi modificada, acrescentando o teste do campo customizado C9_MYFIELD=="1". O seu status continuará a ser representado na legenda da cor VERMELHA.
	{ParamIXB[03,01], ParamIXB[03,02]}}        // Nova regra para os 'Pedidos de Venda com bloqueio' acrescido do teste do do campo customizado C9_MYFIELD=="2". O seu status será representado na legenda da cor MARROM.
Return aNewLegend

//P.E
User Function M461LEG()
	Local aLegNew := ParamIXB

	AADD( aLegNew, {"BR_PINK","Pedido com data para faturamento"} )
Return( aLegNew )
