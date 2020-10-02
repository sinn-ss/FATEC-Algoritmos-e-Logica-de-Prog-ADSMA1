programa
{
	//6)	(ADS MA1-IO) Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit.
	//A formula de conversão é: F := (9 * C + 160)/5, sendo C a temperatura em Celsius e F em Fahrenheit
	funcao inicio()
	{
		real f, c

		escreva("***** CONVERTER CELSIUS EM FAHRENHEIT *****\n\n")

		escreva("Digite o valor a ser convertido de graus Celsius para Fahrenheit: ")
		leia (c)
		f = (9 * c + 160) / 5
		escreva("\n", c, " graus Celsius equivale a ", f, " graus Fahrenheit.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 442; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */