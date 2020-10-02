programa
{
	//48) (LAÇO) Solicite do usuário 4 notas, faça a validação para aceitar valores entre 0 e 10, apresente no final a média ponderada das
	//notas, sendo os pesos 2, 3, 5, 6 respectivamente.

	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, media

		escreva("***** CÁLCULO DE MÉDIA PONDERADA *****\n\n")

		faca {
			escreva("Informe o valor da nota 1: ")
			leia (nota1)

			se (nota1 < 0 ou nota1 > 10) {
				escreva("Nota inválida! Informe um valor entre 0 e 10.\n")
			}
		}
		enquanto (nota1 < 0 ou nota1 > 10)

		faca {
			escreva("Informe o valor da nota 2: ")
			leia (nota2)

			se (nota2 < 0 ou nota2 > 10) {
				escreva("Nota inválida! Informe um valor entre 0 e 10.\n")
			}
		}
		enquanto (nota2 < 0 ou nota2 > 10)

		faca {
			escreva("Informe o valor da nota 3: ")
			leia (nota3)

			se (nota3 < 0 ou nota3 > 10) {
				escreva("Nota inválida! Informe um valor entre 0 e 10.\n")
			}
		}
		enquanto (nota3 < 0 ou nota3 > 10)

		faca {
			escreva("Informe o valor da nota 4: ")
			leia (nota4)

			se (nota4 < 0 ou nota4 > 10) {
				escreva("Nota inválida! Informe um valor entre 0 e 10.\n")
			}
		}
		enquanto (nota4 < 0 ou nota4 > 10)

		media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5) + (nota4 * 6)) / 16

		escreva("\nMédia ponderada: ", mat.arredondar(media, 1))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 301; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */