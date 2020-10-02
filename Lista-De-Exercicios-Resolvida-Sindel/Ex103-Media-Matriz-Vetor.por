programa
{
	//103) (Matriz) Crie um programa em C que receba em um vetor os nomes de 5 alunos. Armazene também em uma Matriz 5x5 as
	//4 notas referentes a cada aluno, calcule a média aritmética e armazena também na matriz. Ao final liste o nome dos
	//Alunos que obtiveram media maior que 6.
	
	
	funcao inicio()
	{
		real matrix[5][5], soma = 0.0, media
		cadeia nomes[5], aprovados[5]
		inteiro linha, coluna, passou = 0, contador = 0

		para (linha = 0; linha < 5; linha++)
		{
			escreva("Escreva o nome do aluno ", linha+1, ": ")
			leia(nomes[linha])
		}

		para (coluna = 0; coluna < 5; coluna++)
		{
			para(linha = 0; linha < 5; linha++)
			{
				se (linha == 4)
				{
					media = soma/4
					escreva(media, "\n")
					matrix[linha][coluna] = media
					se (media > 6)
					{
						passou++
						aprovados[contador] = nomes[coluna]
						contador++
					}
				}
				senao
				{
					escreva("Informe a nota ", linha+1, " de ", nomes[coluna], ": ")
					leia(matrix[linha][coluna])
					soma = soma + matrix[linha][coluna]
				}
			}
			soma = 0.0
		}

		escreva("\n\n\t ***** DADOS *****\n\n")

		para (linha = 0; linha < 5; linha++)
		{
			escreva("\t", nomes[linha])
		}

		escreva ("\n")

		para (coluna = 0; coluna < 5; coluna++)
		{
			para (linha = 0; linha < 5; linha++)
			{
				escreva("\t", matrix[coluna][linha])
			}

			escreva ("\n")
		}

		escreva("\nNo total, ", passou, " alunos foram aprovados: \n")

		para (linha = 0; linha < contador; linha++)
		{
			escreva(aprovados[linha], "\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 313; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */