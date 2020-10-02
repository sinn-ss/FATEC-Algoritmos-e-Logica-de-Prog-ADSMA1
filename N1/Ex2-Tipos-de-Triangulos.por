programa
{
	//Fatec São Caetano do Sul – Antônio Russo
	//TECNOLOGIA EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS - Turma: 1 ADS Manhã
	//AVALIAÇÃO OFICIAL N1
	//DISCIPLINA: Algoritmos e Lógica de Programação
	//DATA: 17/05/2020
	//PROFESSOR: MSc Flávio Viotti

	// ALUNOS: Pedro Miguel Alves Almeida – RA: 1680482011036
	//         Sindel Santos – RA: 1680482011032
	//         Stephani Yatate – RA: 1680482011013


	//2) Faça um programa que leia os três comprimentos de lados de um possível triângulo, a, b e c, e os ordene em ordem crescente,
	//de modo que a represente o maior dos lados. A seguir, determine e mostre o tipo de triângulo que esses três lados formam, com base
	//nas seguintes definições: (Por utilizar a biblioteca Matemática com a função potencia(b,e))

	//Se a>b+c		-Valores não formam triângulo algum;
	//Se a^2=b^2+c^2	-Valores formam um triângulo retângulo
	//Se a^2>b^2+c^2	-Valores formam um triângulo obtusângulo
	//Se a^2<b^2+c^2	-Valores formam um triângulo acutângulo
	//Se a=b=c		-Valores formam um triângulo equilátero

	//SE o triângulo não for equilátero e apresentar dois lados iguais, então é isóscele, caso contrário escaleno. 

	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro a = 0, b = 0, c = 0, trocaLado, a2, b2, c2

		escreva("***** TRIÂNGULOS *****\n")
		escreva("Informe o valor do lado a: ")
		leia (a)
		escreva("Informe o valor do lado b: ")
		leia (b)
		escreva("Informe o valor do lado c: ")
		leia (c)

		escreva("Lado A: ", a, ". Lado B: ", b, ". Lado C: ", c)

		// Reorganizando os lados

		se (a < b) {
			trocaLado = a
			a = b
			b = trocaLado
		}

		se (a < c) {
			trocaLado = a
			a = c
			c = trocaLado
		}

		se (b < c) {
			trocaLado = b
			b = c
			c = trocaLado
		}

		a2 = mat.potencia(a, 2.0)
		b2 = mat.potencia(b, 2.0)
		c2 = mat.potencia(c, 2.0)

		escreva("\nLados reordenados:")
		escreva("\nLado A: ", a, ". Lado B: ", b, ". Lado C: ", c)

		se (a > (b+c)) {
			escreva("\nOs valores não formam um triângulo!")
		}
		senao {

			se (a2 == b2 + c2) {
				escreva("\nValores formam um triângulo retângulo")
			}

			se (a2 > b2 + c2) {
				escreva("\nValores formam um triângulo obtusângulo")
			}

			se (a2 < b2 + c2) {
				escreva("\nValores formam um triângulo acutângulo")
			}

			se (a == b e a == c) {
				escreva("\nValores formam um triângulo equilátero")
			}

			se (a == b ou a == c ou b == c) {
				escreva("\nValores formam um triângulo isósceles")
			}

			se ((a != b e a != c) e (b != c)) {
				escreva("\nValores formam um triângulo escaleno")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */