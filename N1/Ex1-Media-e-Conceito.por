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

	//1)	Suponha que o conceito de um aluno seja determinado em função de sua média aritmética. Suponha também que essa média seja um valor
	//inteiro na faixa de 0 a 100, e que essa média é calculada com base em 3 notas. O problema está em, calculada a média, determinar o
	//respectivo conceito. Considere, ainda, os conceitos conforme a seguir:
	//Nota	Conceito
	//0 a 49	Insuficiente
	//50 a 64	Regular
	//65 a 84	Bom
	//85 a 100	Ótimo.

	//Crie um programa que solicite os dados necessário do usuário de tal forma que resolva o problema acima.

	
	funcao inicio()
	{
		inteiro media = 0, nota1 = 0, nota2 = 0, nota3 = 0
		logico validaNota

		escreva("***** PROGRAMA PARA CALCULAR A MÉDIA E O CONCEITO DE UM ALUNO *****\n")
		
		escreva("Informe a nota 1: ")
		leia (nota1)


		faca {
			se (nota1 >= 0 e nota1 <= 100) {
				validaNota = verdadeiro
			}
			senao {
				validaNota = falso
				escreva("Valor inválido! Insira um valor entre 0 e 100\n")
				escreva("Nota 1: ")
				leia (nota1)
			}

		} enquanto (validaNota == falso)


		escreva("Informe a nota 2: ")
		leia (nota2)

		faca {
			se (nota2 >= 0 e nota2 <= 100) {
				validaNota = verdadeiro
			}
			senao {
				validaNota = falso
				escreva("Valor inválido! Insira um valor entre 0 e 100\n")
				escreva("Nota 2: ")
				leia (nota2)
			}
		} enquanto (validaNota == falso)


		escreva("Informe a nota 3: ")
		leia (nota3)

		faca {
			se (nota3 >= 0 e nota3 <= 100) {
				validaNota = verdadeiro
			}
			senao {
				validaNota = falso
				escreva("Valor inválido! Insira um valor entre 0 e 100\n")
				escreva("Nota 3: ")
				leia (nota3)
			}
		} enquanto (validaNota == falso)
				
		
		media = (nota1 + nota2 + nota3)/3

		se (media <= 49) {
			escreva("Média: ", media, ". Conceito: Insuficiente")
		}
		senao se (media >=50 e media <=64) {
			escreva("Média: ", media, ". Conceito: Regular")
		}
		senao se (media >=65 e media <=84) {
			escreva("Média: ", media, ". Conceito: Bom")
		}
		senao {
			escreva("Média: ", media, ". Conceito: Ótimo") 
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1992; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nota1, 28, 21, 5}-{validaNota, 29, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */