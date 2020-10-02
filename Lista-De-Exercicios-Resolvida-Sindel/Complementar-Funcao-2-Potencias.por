programa
{
	//2)	(FUNÇÕES) Crie uma função que receba um número e seu expoente e exiba esse número elevado ao expoente recebido.
	//Não use funções prontas do PortugolStudio. Faça o programa para testá-lo. Utilize laço de repetição.
	
	funcao potenciacao (inteiro base, inteiro expoente)
	{
		inteiro contador, resultado = base
		para (contador = 1; contador < expoente; contador ++)
		{
			resultado = base * resultado
		}
		escreva("O número ", base, " elevado a ", expoente, " é igual a ", resultado, ".")
	}

	funcao potenciacaoComRetorno (inteiro base, inteiro expoente) inteiro
	{
		inteiro contador, resultado = base
		para (contador = 1; contador < expoente; contador++)
		{
			resultado = base * resultado
		}
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro base, expoente, resultado
		escreva("*** POTENCIAÇÃO ***\n")
		escreva("Informe a base: ")
		leia (base)
		escreva("Informe o expoente: ")
		leia (expoente)
		potenciacao(base,expoente)
		resultado = potenciacaoComRetorno(base,expoente)
		escreva("\n\n***** RETORNO *****\n")
		escreva("O número ", base, " elevado a ", expoente, " é igual a ", resultado, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */