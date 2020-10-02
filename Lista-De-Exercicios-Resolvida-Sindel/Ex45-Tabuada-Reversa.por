programa
{
	//45) (LAÇO) Resolva o exercício anterior mostrando a tabuada de trás para frente.
	funcao inicio()
	{
		inteiro contador, numero

		escreva("***** TABUADA DE TRÁS PRA FRENTE *****\n")
		escreva("Digite um número para apresentarmos a tabuada dele: ")
		leia (numero)

		para(contador = 10; contador >= 0; contador--){
			escreva(numero, " x ", contador, " = ", numero*contador, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */