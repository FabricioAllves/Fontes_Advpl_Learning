#include "Protheus.ch"


User Function Blocos()

Local nItem         := 350
Local nResultado    := 0
Local bBloco        := {||}

bBloco := {|H| E:=15, Z:=30, R:=(E*Z)-H}

nResultado := Eval(bBloco,nItem)


Return
