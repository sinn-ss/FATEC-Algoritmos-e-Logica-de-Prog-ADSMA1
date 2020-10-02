programa
{
	//84) (VETOR) Ler do usuario um vetor de 10 posições de numeros inteiros. Criar uma rotina que informe se o vetor informado
	//é palíndromo ou não. Algo que é palíndromo é aquilo que pode ser lido da direita para a esquerda e vice-versa e o resultado
	//é o mesmo. Ex:
	//1, 2, 3, 4, 4, 3, 2, 1 – é palíndromo
	//1, 2, 3, 4, 5, 6, 7, 8 – não é palíndromo
	funcao inicio()
	{
		inteiro vetor[10],i, j
		logico palindromo = falso

		para (i = 0; i < 10; i++)
		{
			escreva("[", i+1, "] Digite um número: ")
			leia (vetor[i])
		}

		j = 9
		para (i = 0; i < 5; i++)
		{
			se (vetor[i] == vetor [j])
			{
				palindromo = verdadeiro
			}
			senao
			{
				palindromo = falso
				pare
			}

			j--
		}
		
		se (palindromo == verdadeiro)
		{
			escreva("\nO vetor é palíndromo!")
		}
		senao
		{
			escreva("\nO vetor não é palíndromo!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 707; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */