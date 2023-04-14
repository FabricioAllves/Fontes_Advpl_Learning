#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: nValor == 5 -> o nValor e o 2° parametro do EVal(bloco, 5)
*********************************************************************************************/


User Function Bbloco()
  bBloco := {|nValor| result := nValor * nValor, Alert("Valor ao quadrado: " + cValToChar(result)), Alert("Ok") }

  EVal(bBloco, 5)
  EVal(bBloco, 10)

Return


