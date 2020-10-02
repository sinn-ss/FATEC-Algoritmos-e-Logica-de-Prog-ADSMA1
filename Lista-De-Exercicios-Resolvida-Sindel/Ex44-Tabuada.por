programa
{
	//44) (ADS-LAÇO) Apresentar os resultados de uma tabuada de um numero fornecido pelo usuário, que deve seguir a seguinte forma.
	//Exemplo:
	//2 x 1 = 2
	//2 x 2 = 4
	//….
	//2 x 10 = 2
	
	funcao inicio()
	{
		inteiro contador, numero

		escreva("***** TABUADA *****\n")
		escreva("Digite um número para apresentarmos a tabuada dele: ")
		leia (numero)

		para(contador = 0; contador <= 10; contador++){
			escreva(numero, " x ", contador, " = ", numero*contador, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */