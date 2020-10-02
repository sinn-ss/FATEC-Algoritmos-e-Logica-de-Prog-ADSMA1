programa
{
	//85) (VETOR) Ler um vetor W de 10 elementos, depois ler um valor V. Contar e escrever quantas vezes o valor V ocorre no
	//vetor W e escrever também em que posições (índices) do vetor W o valor V aparece. Caso o valor V não ocorra nenhuma vez
	//no vetor W, escrever uma mensagem informando isto.
	funcao inicio()
	{
		inteiro W[10], indicesW[10], V, contador, contadorW = 0, contaV = 0
		//W é o vetor que recebe os valores
		//indicesW é o vetor que recebe as posições onde o valor V aparece em W
		// V é o valor procurado
		// contador percorre o laço de 0 até o numero definido no laço
		// contadorW percorre as posições do vetor indicesW sempre que V é encontrado
		// contaV armazena quantas vezes o valor aparece no vetor

		escreva("***** PREENCHER W *****\n")

		//Laço para preencher o vetor W com 10 valores
		para (contador = 0; contador < 10; contador++)
		{
			escreva("[W", contador, "] Digite um número: ")
			leia (W[contador])
		}

		// usuário informa o valor de V
		escreva("\n***** PREENCHER V *****\n")
		escreva("Informe o valor de V: ")
		leia (V)

		// Laço que verifica se o valor de V aparece no vetor W
		para (contador = 0; contador < 10; contador++)
		{
			// Se a posição contador de W for igual a V
			se (W[contador] == V)
			{
				contaV++ // Soma 1 à quantidade de vezes em que aparece
				indicesW[contadorW] = contador // Armazena no vetor indicesW[posição contadorW] o valor de contador, que corresponde em qual posição o valor de V apareceu em W
				contadorW++ // No vetor indicesW, passa paraa próxima posição para caso o valor apareça novamente
			}
		}

		// Verifica se não foi encontrado nenhuma vez
		se (contaV == 0)
		{
			escreva("\nO valor de V não aparece no vetor W!")
		}
		// Se tiver sido encontrado, informa quantas vezes e em quais posções mostrando o que foi armazenado em indicesW
		senao
		{
			escreva("\nO valor de V aparece ", contaV, " vezes no vetor W.\n")
			escreva("Ele aparece nas posições: ")
			para (contador = 0; contador < contaV; contador++)
			{
				escreva("[", indicesW[contador], "] ")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {W, 8, 10, 1}-{indicesW, 8, 17, 8}-{contador, 8, 34, 8}-{contadorW, 8, 44, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */