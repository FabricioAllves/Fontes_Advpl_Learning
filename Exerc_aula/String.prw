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
// - declare uma variável nNumero com valor 10.5
// - Declare uma variável cNumero
// - Declare uma variável dData com a data de "01/12/21" (tem que ser tipo data)
// - Declare uma variável cData
// - Declare uma variável sData
// - Declare uma variável cTexto com o texto "AULA PRATICA"
// - Declare uma variável cTexto2

// - faca com que a variável CDATA assuma a data da variável DDATA, no formato caractere
// - faca com que a variável SDATA assuma a data da variável DDATA, no formato string
// - faca com que a variável CNUMERO assuma o numero da variável NNUMERO, no formato caractere
// - faca com que a variável CTEXTO2 assuma os 5 primeiros caracteres da variável CTEXTO
// - faca com que a variável CTEXTO2 tenha somente a primeira letra em maiúsculo
// - faca com que a variável CTEXTO2 tenha todas as letras em minúsculo
// - troque a letra "A" por "O" na variável  CTEXTO2
