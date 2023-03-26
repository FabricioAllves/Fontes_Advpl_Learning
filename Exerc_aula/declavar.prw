#include "protheus.ch"
/*/{Protheus.doc} nomeFunction
  (long_description)
  @type  Function
  @author user
  @since 28/02/2023
  @version version
  @param param_name, param_type, param_descr
  @return return_var, return_type, return_description
  @example
  (examples)
  @see (links_or_references)
  /*/

//Exercicio aula de declaraçao de variaveis

User Function DECLVAR()

	//Local cCurso := "CURSO"
	// Private nNumero := 0
	// Private cText   := ""
	//Private lLogic  := .T.
	// Private aTeste  := {}
	// Private dDate   := Ctod("")
	// Private bBlock  := {||}
  cTexto2 := "fa" 
  ctexto := "Fabricio Henrique Alves da Silva"


  cTexto2 := Stuff(cTexto,5,1,'bbbb')
  cTexto := SubStr("Fabricio Henrique Alves da Silva",1,4)
  MsgInfo(cTexto2)



	Filha()
Return

Static Function Filha()

	Alert("TESTE")

return

User Function Outra()

	Private TESTE := 'Teste'
	U_DECLVAR()
return




