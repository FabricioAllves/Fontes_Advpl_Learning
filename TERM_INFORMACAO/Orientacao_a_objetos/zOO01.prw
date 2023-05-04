#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: Criaçao da Classe Pessoa
*|      *@example
*|      oObjeto := zPessoa():New()
*********************************************************************************************/
Class zPessoa
  Data nIdade
  Data dNascimento
  Data cNome

  //Métodos
  Method New() CONSTRUCTOR
  Method MostraIdade()
EndClass

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: 
*|      @param cNome, Caracter, Nome da Pessoa
*|      @param dNascimento, Data, Data de nascimento da Pessoa
*|      @example
*|      oObjeto := zPessoa():New("Joao", sToD("19800712"))
*********************************************************************************************/
Method New(cNome, dNascimento) Class zPessoa
  //Atribuindo valores nos atributos do objeto instanciado
  ::cNome         := cNome
  ::dNascimento   := dNascimento
  ::nIdade        := fCalcIdade(dNascimento)
Return Self

/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: 
*|      @example
*|      oObjeto:MostraIdade()
*********************************************************************************************/
Method MostraIdade() Class zPessoa
  Local cMsg := ""

  //Criando e mostrando a mensagem
  cMsg := "A <b>pessoa</b> "+::cNome+" tem "+cValToChar(::nIdade)+" anos!"
  MsgInfo(cMsg, "Atenção")
Return

Static Function fCalcIdade(dNascimento)
  Local hoje := Date()
  Local soma := (dNascimento - hoje)
Return soma
