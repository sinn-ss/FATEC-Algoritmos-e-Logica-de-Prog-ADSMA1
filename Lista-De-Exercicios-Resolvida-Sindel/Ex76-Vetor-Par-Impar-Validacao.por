programa
{
	//76) (VETOR) Ler dois vetores A e B com 6 elementos. O vetor A deve aceitar apenas entradas de valores pares, enquanto
	//o vetor B deve aceitar apenas a entrada de valores impares. A entrada dos dois deve ser validada pelo programa e não
	//pelo usuário. Construir um vetor C de forma que C seja a junção dos vetores A e B de modo que C possua 12 elementos.
	//Apresentar a matriz C.
	funcao inicio()
	{
		inteiro A[6], B[6], C[12], contador

		para (contador = 0; contador < 6; contador++)
		{
			faca
			{
				escreva("[A", contador+1, "] Informe um valor par: ")
				leia (A[contador])

				se (A[contador] %2 == 1)
				{
					escreva("Você inseriu um valor ímpar!\n")
				}
			} enquanto (A[contador] %2 == 1)
		}

		escreva("\n")

		para (contador = 0; contador < 6; contador++)
		{
			faca
			{
				escreva("[B", contador+1, "] Informe um valor ímpar: ")
				leia (B[contador])

				se (B[contador] %2 == 0)
				{
					escreva("Você inseriu um valor par!\n")
				}
			} enquanto (B[contador] %2 == 0)
		}

		para (contador = 0; contador < 6; contador++)
		{
			C[contador] = A[contador]
			C[contador+6] = B[contador]
		}

		para (contador = 0; contador < 12; contador ++)
		{
			escreva("[C", contador+1, "]: ", C[contador], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {C, 9, 22, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */