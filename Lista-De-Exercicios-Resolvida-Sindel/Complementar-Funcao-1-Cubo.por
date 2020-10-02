programa
{
	//1)	(FUNÇÕES) Crie uma função que receba um número e exiba esse número elevado ao cubo. Faça o programa para testá-lo.
	//Não use bibliotecas.
	
	funcao cubo (inteiro numero)
	{
		inteiro contador, resultado = numero
		para (contador = 1; contador < 3; contador++)
		{
			resultado = resultado * numero
		}

		escreva("O número ", numero, " elevado ao cubo é igual a ", resultado, ".")
	}

	funcao cuboComRetorno (inteiro numero) inteiro
	{
		inteiro contador, resultado = numero
		para (contador = 1; contador < 3; contador++)
		{
			resultado = resultado * numero
		}

		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro numero, resultado
		escreva("Informe um número para elevar ao cubo: ")
		leia(numero)
		cubo(numero)
		resultado = cuboComRetorno(numero)
		escreva("\n\n***** RETORNO *****\n")
		escreva("O número ", numero, " elevado ao cubo é igual a ", resultado, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */