#include "protheus.ch"

User Function Testevar()
  Local nNumero := 10.398
  Local cNumero
  Local dData   := cTod("01/12/23")
  Local cData 
  Local sData
  Local cTexto  := "AULA PRATICA"
  Local cTexto2

  cData := dToc(dData)
  sData := dToS(dData)

  cNumero := cValToChar(nNumero)
  cTexto2 := subStr(cTexto, 1,5)
  cTexto2 := Capital(cTexto2)
  cTexto2 := Lower(cTexto2)
  cTexto2 := StrTran(cTexto2,"a","o")
Return

// - Crie uma user function TESTEVAR()
// - declare uma vari�vel nNumero com valor 10.5
// - Declare uma vari�vel cNumero
// - Declare uma vari�vel dData com a data de "01/12/21" (tem que ser tipo data)
// - Declare uma vari�vel cData
// - Declare uma vari�vel sData
// - Declare uma vari�vel cTexto com o texto "AULA PRATICA"
// - Declare uma vari�vel cTexto2

// - faca com que a vari�vel CDATA assuma a data da vari�vel DDATA, no formato caractere
// - faca com que a vari�vel SDATA assuma a data da vari�vel DDATA, no formato string
// - faca com que a vari�vel CNUMERO assuma o numero da vari�vel NNUMERO, no formato caractere
// - faca com que a vari�vel CTEXTO2 assuma os 5 primeiros caracteres da vari�vel CTEXTO
// - faca com que a vari�vel CTEXTO2 tenha somente a primeira letra em mai�sculo
// - faca com que a vari�vel CTEXTO2 tenha todas as letras em min�sculo
// - troque a letra "A" por "O" na vari�vel  CTEXTO2
