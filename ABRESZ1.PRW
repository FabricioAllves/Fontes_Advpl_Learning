#include "protheus.ch"
#include "vkey.ch"
#include "Rwmake.ch"
#INCLUDE "JPEG.ch"
#include "msmgadd.ch"


User Function ABRESZ1()

	Private cCadastro := "Cadastro UM Cliente"

	Private aRotina := { {"Pesquisar","AxPesqui",0,1} ,;
		{"Visualizar","AxVisual",0,2} ,;
		{"Alterar","AxAltera",0,4} ,;
		{"Incluir","AxInclui",0,3} ,;
		{"Excluir","AxDeleta",0,5}}

		//aRotina[1,3]

	Private cDelFunc := ".T." // Validacao para a exclusao. Pode-se utilizar ExecBlock

	Private cString   := "SZ1"
	Private cCondicao	:= ""
	Private aIndSB1		:= {}
	Private cCampo
	Private aCampos   := {}

	Private nNumero   := nCalc := nACER := 0
	Private nCalc     := 0
	Private nAcer     := 0

	nResult := 3 % 2

	nResult := Str(nResult)

Private datee := Date()



	cBranco := "TESTE"+Space(10)
	cBranco := cBranco - " TESTE"

	If "TESTE" $ cBranco
		Alert("OK")
	else
		Alert("NAO ENCONTROU")
	EndIf


	If nResult > 0
		Alert("MAIOR QUE ZERO")
	ElseIf nResult < 0
		Alert("MENOR QUE ZERO")
	ElseIf nResult == 0
		Alert("IGUAL A ZERO")
	ElseIf nResult <= 0
		Alert("MENOR IGUAL ZERO")
	ElseIf nResult >= 0
		Alert("MAIOR IGUAL ZERO")
	ElseIf nResult <> 0     // "<> => DIFERENTE "
		Alert("DIFERENTE DE ZERO")
	ElseIf nResult # 0      // "#" => DIFERENTE(Essa forma e pouco usada) "
		Alert("DIFERENTE DE ZERO")
	ElseIf nResult != 0
		Alert("NAO IGUAL DE ZERO")
	EndIf


	If nResult > 0 .And. "TESTE" $ cBranco
		Alert("TESTE E OK")
	ElseIf nResult > 0 .Or. "TESTE" $ cBranco
		Alert("TESTE OU OK")
	ElseIf .Not.(nResult > 0) .Or. !("TESTE" $ cBranco)
		Alert("TESTE OU OK")
	ElseIf !(nResult > 0 .And. "TESTE" $ cBranco)
	Alert("NAO ACONTECEU")
	EndIf


	nResult := 5
	nResult += 5
	nResult -= 5
	nResult *= 5
	nResult /= 5

	nCont := 0
	nCont2 := 10
	While nCont < 10
		nNumero := 2
		nCalc := 1
		nAcer := 3

		nCont ++
		nCont2 --
	End

	nNumero := nCalc := nAcer := 0


	dbSelectArea("SZ1")
	dbSetOrder(1)


	//ASort(aCampos,,,{|x,y|x[1]<y[1]})
	dbSelectArea(cString)
	mBrowse( 6,1,22,75,cString,aCampos,cCampo)


Return

