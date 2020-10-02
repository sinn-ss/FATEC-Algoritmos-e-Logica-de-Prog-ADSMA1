programa
{
	//5)	(ADS MA1/VA1-IO) Faça um programa em VisualG, que solicite do usuário o nome e sua idade. Exiba a frase
	//“Olá sr(a) XXXXXXXXXXXXXXXXX, você tem XX anos de idade”.
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade

		escreva("Qual o seu nome? ")
		leia (nome)
		escreva("Qual sua idade? ")
		leia (idade)

		escreva("\nOlá sr(a) ", nome, ", você tem ", idade, " anos de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */