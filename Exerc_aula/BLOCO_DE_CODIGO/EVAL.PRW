#include "Protheus.ch"

User Function Eval()
	Local nItem := 100

	bBloco := {|X| Y:= 5, Z:= X*Y}

	nValor:= Eval(bBloco, nItem)

Return
