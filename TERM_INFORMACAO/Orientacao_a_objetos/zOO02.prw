#Include "Totvs.ch"
/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 04/05/2023
*| Description: Função que testa a classe Pessoa (via debug para ver os atributos)
*|      *@example
*|      u_zOO02()
*********************************************************************************************/
User Function zOO02()
  Local oPessoa
  Local cNome          := "Jose"
  Local dNascimento    := sTod("19850712")

  //Instanciando o objeto atraves da classe Pessoa
  oPessoa := zPessoa():New(cNome, dNascimento)

  //Chamando um metodo da classe
  oPessoa:MostraIdade()

Return
