programa
{
	//46) (ADS-LAÇO) Utilizando o laço de repetição, apresente a soma dos números existentes entre 1 e 100 inclusive.
	//(1+2+3+4+5+6…..+99+100). Efetuar o teste de mesa dos 4 primeiros elementos
	
	funcao inicio()
	{
		inteiro contador, memoria

		escreva("***** PARA *****\n\n")
		
		memoria=0

		para (contador=1;contador<=100;contador++){
			memoria=memoria+contador
			se (contador!=100){
				escreva(contador, " + ")
			}
			se (contador==100){
				escreva(contador)
			}
		}

		escreva(" = " + memoria)

		escreva("\n\n")
		escreva("***** FAÇA ... ENQUANTO *****\n\n")

		contador = 1
		memoria = 0

		faca {
			memoria = memoria + contador

			se (contador!=100){
				escreva(contador, " + ")
			}
			se (contador==100){
				escreva(contador)
			}
			
			contador = contador + 1
		}
		enquanto (contador <= 100)

		escreva(" = ", memoria)

		escreva("\n\n")
		escreva("***** ENQUANTO *****\n\n")

		contador = 1
		memoria = 0

		enquanto (contador <= 100) {
			memoria = memoria + contador

			se (contador!=100){
				escreva(contador, " + ")
			}
			se (contador==100){
				escreva(contador)
			}
			
			contador = contador + 1
		}

		escreva(" = ", memoria)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */