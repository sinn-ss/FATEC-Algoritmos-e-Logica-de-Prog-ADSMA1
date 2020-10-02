programa
{
	//42) Crie um programa que calcule e escreva a quantidade de grãos de milho que se pode colocar num tabuleiro de xadrez,
	//conforme regra definida abaixo:
		//a. Um tabuleiro de xadrez possui 64 casas, na primeira casa se coloca 1 grão, nas casas subsequentes será colocado
		//o dobro de grãos da casa anterior.
	funcao inicio()
	{
		inteiro contador
		real soma=1

		escreva("Escreva a quantidade de grãos de milho que se pode colocar em um tabuleiro de xadrez, conforme a seguinte regra:\n")
		escreva("Um tabuleiro de xadrez possui 64 casas. Na primeira casa se coloca 1 grão, nas casas subsequentes, será colocadoo dobro de grãos da casa anterior\n")
		

		para (contador = 1; contador <= 64; contador++){
			escreva("\nCasa ", contador, ": ", soma)
			soma = soma*2
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */