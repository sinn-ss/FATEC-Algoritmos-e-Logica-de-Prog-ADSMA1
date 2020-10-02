programa
{
	//47) (ADS-LAÇO) Utilizando o laço de repetição, informe se os números existentes entre 1 e 20 são pares ou impares.
	//Mostre da seguinte maneira:
	//1 é impar
	//2 é Par
	//3 é Impar
	//….
	//20 é Par
	
	funcao inicio()
	{
		inteiro contador

		escreva("***** PARA *****\n\n")

		para (contador=1;contador<=20;contador++){
			se (contador%2==0) {
				escreva(contador, " é par!\n")
			}
			senao {
				escreva(contador, " é ímpar!\n")
			}
		}

		escreva("\n")
		escreva("***** FAÇA ... ENQUANTO *****\n\n")

		contador = 1

		faca {
			se (contador%2==0) {
				escreva(contador, " é par!\n")
			}
			senao {
				escreva(contador, " é ímpar!\n")
			}
			contador += 1
		}
		enquanto (contador <=20)

		escreva("\n")
		escreva("***** ENQUANTO *****\n\n")

		contador = 1

		enquanto (contador <= 20) {
			se (contador%2==0) {
				escreva(contador, " é par!\n")
			}
			senao {
				escreva(contador, " é ímpar!\n")
			}
			contador += 1
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 958; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */