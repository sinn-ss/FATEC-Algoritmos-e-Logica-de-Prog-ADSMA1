programa
{
	//43) (ADS-LAÇO) Exibir quantos números, entre 0 e 1000 são:
	//a. Divisíveis por 2
	//b. Divisíveis por 4
	//c. Divisíveis por 7
	
	funcao inicio()
	{
		inteiro contador, contador2, contador4, contador7
		contador2 = 0
		contador4 = 0
		contador7 = 0

		para (contador=0;contador<=1000;contador++){
			se (contador%2==0){
				contador2 = contador2 + 1
			}
			se (contador%4==0){
				contador4 = contador4 + 1
			}
			se (contador%7==0){
				contador7 = contador7 + 1
			}
			//escreva(contador, " - \n")
		}

		escreva("De 0 até 1000, ", contador2, " números são divisíveis por 2.\n")
		escreva("De 0 até 1000, ", contador4, " números são divisíveis por 4.\n")
		escreva("De 0 até 1000, ", contador7, " números são divisíveis por 7.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */