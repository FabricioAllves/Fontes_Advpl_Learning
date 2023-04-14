#Include "Totvs.ch"

/********************************************************************************************
*| {Protheus.doc} User Function zLogin03
*| @type Function
*| @Author Fabricio H.
*| @Since 13/04/2023
*| Description: fonte sobre Array simples e Multidimensional
*********************************************************************************************/

/*                              Coluna1  |  Coluna2 |  Coluna3

 Linha[1][Coluna]             |          |          |          |   
 Linha[2][Coluna]             |          |          |          |
 Linha[3][Coluna]             |          |          |          |

*/


User Function zArray()
//Array simples
  aArray := {}

  //Array Multidimensional
  aArray2 := {{"Gunar",sTod("20230413"), "Pedro","Joao"},;
              {"Gun","t1", "Pedo1","Jo1"}}

//AADD serve para adicionar elemento no ARRAY
  AADD(aArray, {"Fabricio", "Henrique"})
  AADD(aArray2, {"Comando", "Baterias", "Ltda"})


  //Inserindo elemento no Array
  aSize(aArray, Len(aArray) + 1)
  aIns(aArray,1)
  aArray[2] := "3° posiçao inserida"

nPos := aScan(aArray2, {|x| AllTrim(Upper(x[1])) == "GUNAR"})
If nPos > 0
  Msginfo("Gunar encontrado na linha " + cValToChar(nPos) + ".", "Atençao")
Else
 Msginfo("Gunar nao foi encontrado", "Atençao")
EndIf
  

Return


