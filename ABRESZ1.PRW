#include "protheus.ch"
#include "vkey.ch"
#include "Rwmake.ch"
#INCLUDE "JPEG.ch"
#include "msmgadd.ch"


User Function ABRESZ1()

	///Local nNumero   := 0
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
	Private aVeiculo   := {}

	//
	aVeiculo := {"Fusca","vw","gasolina",.F.,1964,3000}




	// for nNumero := 1 to 10 STEP 2
	// 	Conout(cValToChar(nNumero))

	// 	If nNumero == 5
	// 		Loop
	// 	ElseIf nNumero == 9
	// 		Exit
	// 	else
	// 		nNumero--
	// 	EndIf

	// 	Conout("PASSOU "+CValToChar(nNumero)+" VEZES")
	// next

	// nNumero := 0

	// While nNumero <= 10
	// 	If nNumero == 5
	// 		nNumero++
	// 		Loop
	// 	ElseIf nNumero == 9
	// 		Exit
	// 	End
	// 	nNumero++
	// End



	dbSelectArea("SZ1")
	dbSetOrder(1)


	//ASort(aCampos,,,{|x,y|x[1]<y[1]})
	dbSelectArea(cString)
	mBrowse( 6,1,22,75,cString,aCampos,cCampo)


Return

