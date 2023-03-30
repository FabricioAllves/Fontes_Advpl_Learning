#include "protheus.ch"
#include "vkey.ch"
#include "Rwmake.ch"
#INCLUDE "JPEG.ch"
#include "msmgadd.ch"


User Function ABRESZ1()

	///Local nNumero   := 0
	Local x
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
	Private aVeiculo  := {}

	//
	aVeiculo := {}
	AADD(aVeiculo,{"FUSCA","VW","GASOLINA",.F.,1976,10000,})
	AADD(aVeiculo,{"CHEVETE","GM","GASOLINA",.T.,1976,30000,})
	AADD(aVeiculo,{"LANDAU","FORD","GASOLINA",.T.,1976,30000,})

	ADEL(aVeiculo[3], aVeiculo[2])

	For x:=1 To Len(aVeiculo)
		aVeiculo[x,7] := .F.
	Next

	//copia o array aVeiculo
	AVEIC2 := ACLONE(aVeiculo)

	//COLOCA O LANDAU COM VENDIDO
	nPos := Ascan(AVEIC2, {|X| X[1] == "LANDAU"})
	AVEIC2[nPos, 7] := .T.

	//REMOVER ITENS VENDIDO
	For x:=1 To Len(AVEIC2)
		If AVEIC2[x,7]
			//ADEL(AVEIC2,x)
			ASIZE(AVEIC2, Len(AVEIC2)-1)
		EndIf
	Next

	AVEIC2:= aSort(AVEIC2,,,{|x,z| x[1] < y[1]})

	dbSelectArea("SZ1")
	dbSetOrder(1)


	//ASort(aCampos,,,{|x,y|x[1]<y[1]})
	dbSelectArea(cString)
	mBrowse( 6,1,22,75,cString,aCampos,cCampo)


Return

