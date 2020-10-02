programa
{
	//50) (LAÇO) Faça um programa que solicite do usuário 10 números, esses números devem estar entre 1 e 100, caso esteja fora desse
	//intervalo não aceite o número. Ao final exiba quantos números são maiores que 20 e quantos números são menores que 10.
	
	funcao inicio()
	{
		inteiro contador, numero, maiorQue20=0, menorQue10=0

		contador = 1
		
		faca {
			escreva(contador, " - Informe um número entre 1 e 100: ")
			leia (numero)

			se (numero < 1 ou numero > 100) {
				escreva("Número inválido!\n")
			}
			senao {
				se (numero > 20) {
					maiorQue20 += 1
				}
				senao se (numero < 10) {
					menorQue10 += 1
				}

				contador += 1
			}
		}
		enquanto (contador <= 10)

		escreva("\nDos números informados, ", maiorQue20, " são maiores do que 20, e ", menorQue10, " são menores do que 10.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */