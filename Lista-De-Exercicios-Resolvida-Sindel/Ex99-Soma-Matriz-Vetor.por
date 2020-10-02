programa
{
	//99) (Matriz) Crie um programa em C que solicite do usuário a entrada de dados para uma matriz 4x3. Crie também um vetor
	//vazio de 4 elementos. Após a entrada de dados, você deverá gravar no vetor a somatória de cada uma das linhas da matriz.
	//Apresente o vetor ao final.
	funcao inicio()
	{
		inteiro matrix[4][3], vetor[4], linha, coluna, soma = 0

		para (linha = 0; linha < 4; linha++)
		{
			para (coluna = 0; coluna < 3; coluna++)
			{
				escreva("Informe a posição [", linha, "][", coluna, "]: ")
				leia(matrix[linha][coluna])
				soma = soma + matrix[linha][coluna]
			} 
			vetor[linha] = soma
			soma = 0
		}

		escreva("\n\nSOMA DAS LINHAS\n\n")

		para (linha = 0; linha < 4; linha++)
		{
			escreva("[", linha, "]: ", vetor[linha], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrix, 8, 10, 6}-{vetor, 8, 24, 5}-{soma, 8, 49, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */