#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: Var STATIC � lida no fonte todo na qual foi declarado....ou seja, podemos usar 
*| essa variavel Static em qualquer function do nosso .prw
*********************************************************************************************/
  Static varr := "Oi, eu sou  o Fabricio"

User Function zLogin05()
  Local aArea := GetArea()

  MsgInfo(varr, "Aten�ao")

  RestArea(aArea)
Return


