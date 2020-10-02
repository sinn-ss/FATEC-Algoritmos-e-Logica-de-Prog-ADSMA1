programa
{
	//82) (VETOR) Ler n valores do usuario e armazenar em um vetor de 6 posições somente os valores digitados que forem pares.
	//Quando o vetor ficar cheio encerre a entrada de dados e exiba o vetor.
	funcao inicio()
	{
		inteiro pares[6], contador

		para (contador = 0; contador < 6; contador++)
		{
			faca
			{
				escreva("[", contador+1, "] Digite um número par: ")
				leia (pares[contador])

				se (pares[contador] %2 != 0)
				{
					escreva("Você informou um número ímpar!\n")
				}
				
			}
			enquanto (pares[contador] % 2 != 0)
		}

		escreva("\n***** VETOR DE NÚMEROS PARES *****\n\n")

		para (contador = 0; contador < 6; contador++)
		{
			escreva("[", contador+1, "]: ", pares[contador], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */