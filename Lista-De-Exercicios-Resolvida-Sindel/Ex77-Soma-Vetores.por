programa
{
	//77) (VETOR) Ler dois vetores A e B com 5 elementos cada. Após a entrada criar um vetor C de mesmo tamanho que seja o
	//resultado de A + B. Exiba o conteúdo do vetor C, utilize o comando FOR para a exibição.
	funcao inicio()
	{
		inteiro A[5], B[5], C[5], contador

		para (contador = 0; contador < 5; contador++)
		{
			escreva("Informe o valor de A [", contador+1, "]: ")
			leia (A[contador])
		}

		escreva("\n")

		para (contador = 0; contador < 5; contador++)
		{
			escreva("Informe o valor de B [", contador+1, "]: ")
			leia (B[contador])

			C[contador] = A[contador] + B[contador]
		}

		escreva("\n***** VETOR C = SOMA DE A + B *****\n\n")
		
		para (contador = 0; contador < 5; contador++)
		{
			escreva("C[", contador+1,"]: ", C[contador], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */