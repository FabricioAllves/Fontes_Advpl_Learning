#Include "Totvs.ch"

//Define Array contendo as Rotinas a executar do programa     
// ----------- Elementos contidos por dimensao ------------    
// 1. Nome a aparecer no cabecalho                             
// 2. Nome da Rotina associada                                 
// 3. Usado pela rotina                                        
// 4. Tipo de Transacao a ser efetuada                         
//    1 - Pesquisa e Posiciona em um Banco de Dados            
//    2 - Simplesmente Mostra os Campos                        
//    3 - Inclui registros no Bancos de Dados                  
//    4 - Altera o registro corrente                          
//    5 - Remove o registro corrente do Banco de Dados        
//    6 - Altera determinados campos sem incluir novos Reg


/********************************************************************************************
*| {Protheus.doc} User Function nameFunction
*| @type Function
*| @Author Fabricio H.
*| @Since 00/00/0000
*| Description: Aula sobre P.E
*********************************************************************************************/
User Function nameFunction()

Return

User Function MA020ROT()
	Local aArea := GetArea()
	Local aRotU := {}

	AADD( aRotU, { '*Documento', "MsDocument('SA2', SA2->(recno()), 4)", 0, 4 } )

	RestArea(aArea)
Return (aRotU)
