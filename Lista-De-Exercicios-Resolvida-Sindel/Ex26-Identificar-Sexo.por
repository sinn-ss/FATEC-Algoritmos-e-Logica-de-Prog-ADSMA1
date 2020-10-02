programa
{
	/*
	 * 26) (SWITCH) Faça um programa em C que solicite o sexo do usuário (M/F), e informe que o sexo digitado foi Masculino,
	 * Feminino ou Sexo Inválido. Resolva em duas etapas, uma usando o Switch e outra usando o IF. Lembre-se o usuário pode
	 * digitar letras maiúsculas ou minúsculas.
	 * 
	 *	CÓDIGO POR: SINDEL C. S. SANTOS PARA O CURSO DE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (MANHÃ) DA FATEC SÃO CAETANO DO SUL
	 *	DISCIPLINA DE ALGORITMOS E LÓGICA DE PROGRAMAÇÃO MINISTRADA PELO PROFESSOR FLÁVIO VIOTTI
	 *	RA: 1680482011032
	 */

	
	funcao inicio()
	{
		caracter sexo

		escreva(" ### PROGRAMA PRA IDENTIFICAR O SEXO DIGITADO ###")
		escreva("\n ### Resolução por ESCOLHA CASO ###")
		escreva("\n\nOlá! Vamos identificar o sexo escolhido pelo usuário entre masculino e feminino.")
		escreva("\nPara isso, me informe abaixo o seu sexo, utilizando 'F' para Feminino ou 'M' para Masculino: ")

		leia (sexo)

		escolha (sexo){
			caso 'F':
				escreva("\n\nVocê selecionou o sexo Feminino.")
			pare

			caso 'f':
				escreva("\n\nVocê selecionou o sexo Feminino.")
			pare

			caso 'M':
				escreva("\n\nVocê selecionou o sexo Masculino.")
			pare

			caso 'm':
				escreva("\n\nVocê selecionou o sexo Masculino.")
			pare

			caso contrario:
				escreva("\n\nVocê selecionou um sexo inválido. Você é um X-Men?")
		}

		escreva("\n\nObrigada por usar o programa! :)")

		sexo = 'X'

		escreva("\n\n\n ### PROGRAMA PRA IDENTIFICAR O SEXO DIGITADO ###")
		escreva("\n ### Resolução por SE/SENAO ###")
		escreva("\n\nOlá! Vamos identificar o sexo escolhido pelo usuário entre masculino e feminino.")
		escreva("\nPara isso, me informe abaixo o seu sexo, utilizando 'F' para Feminino ou 'M' para Masculino: ")

		leia (sexo)

		se (sexo == 'F' ou sexo == 'f'){
			escreva("\n\nVocê selecionou o sexo Feminino.")
		}
		senao se (sexo == 'M' ou sexo == 'm'){
			escreva("\n\nVocê selecionou o sexo Masculino.")
		}
		senao{
			escreva("\n\nVocê selecionou um sexo inválido. Você é um X-Men?")
		}

		escreva("\n\nObrigada por usar o programa! :)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */