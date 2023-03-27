#include "protheus.ch"

User Function Numericas

Local nNumero := 13
Local nResultado := 0
Local ctexto := ""
Local aArray := {}

nNumero := 13 / 2

nResultado := Round(nNumero,2)

Alert(ValType(nNumero))
Alert(ValType(nResultado))
Alert(ValType(ctexto))
Alert(ValType(aArray))

Return
