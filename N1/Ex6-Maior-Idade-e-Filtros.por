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

	//6)	Foi realizada uma pesquisa de algumas características físicas da população de uma certa região. Foram entrevistadas 500 pessoas e
	//coletados os seguintes dados:  
	// a- sexo: M (masculino) e F (feminino)
	// b- cor dos olhos: A (azuis), V (verdes) e C (castanhos)
	// c- cor dos cabelos: L (louros), C (castanhos) e P (pretos)
	// d- idade
	//Deseja-se saber:
	// a.	a maior idade do grupo
	// b.	a quantidade de indivíduos do sexo feminino, cuja idade está entre 18 e 35 anos e que tenham olhos verdes e cabelos louros.
	
	funcao inicio()
	{
		inteiro contador,idade, maiorIdade=0, qtdePessoas=0
		caracter sexo, corDosOlhos, corDosCabelos

		escreva("***** CARACTERÍSTICAS FÍSICAS *****\n")

		para (contador = 1; contador <= 500; contador++)
		{
			escreva("*** PESSOA ", contador, " ***\n")
			escreva("INFORME O SEXO\n")
			escreva("[M] Masculino [F] Feminino\n")
			escreva("Opção: ")
			leia (sexo)
			//Validar sexo
			faca
			{
				se (sexo != 'F' e sexo != 'f' e sexo != 'M' e sexo != 'm')
				{
					escreva("OPÇÃO INVÁLIDA!\n")
					escreva("Digite [M] para Masculino ou [F] para Feminino\n")
					escreva("Opção: ")
					leia (sexo)
				}
			} enquanto (sexo != 'F' e sexo != 'f' e sexo != 'M' e sexo != 'm')
			//Fim validar sexo
			
			escreva("INFORME A COR DOS OLHOS\n")
			escreva("[A] Azuis [V] Verdes [C] Castanhos\n")
			escreva("Opção: ")
			leia (corDosOlhos)
			//Validar cor dos olhos
			faca
			{
				se (corDosOlhos != 'A' e corDosOlhos != 'a' e corDosOlhos != 'V' e corDosOlhos != 'v' e corDosOlhos != 'C' e corDosOlhos != 'c')
				{
					escreva("OPÇÃO INVÁLIDA!\n")
					escreva("Digite [A] para Azuis, [V] para Verdes ou [C] para Castanhos\n")
					escreva("Opção: ")
					leia (corDosOlhos)
				}
			} enquanto (corDosOlhos != 'A' e corDosOlhos != 'a' e corDosOlhos != 'V' e corDosOlhos != 'v' e corDosOlhos != 'C' e corDosOlhos != 'c')
			//Fim validar cor dos olhos
			
			escreva("INFORME A COR DOS CABELOS\n")
			escreva("[L] Louros [C] Castanhos [P] Pretos\n")
			escreva("Opção: ")
			leia (corDosCabelos)
			//Validar cor dos cabelos
			faca
			{
				se (corDosCabelos != 'L' e corDosCabelos != 'l' e corDosCabelos != 'C' e corDosCabelos != 'c' e corDosCabelos != 'P' e corDosCabelos != 'p')
				{
					escreva("OPÇÃO INVÁLIDA!\n")
					escreva("Digite [L] para Louros, [C] para Castanhos ou [P] para Pretos\n")
					escreva("Opção: ")
					leia (corDosCabelos)
				}
			} enquanto (corDosCabelos != 'L' e corDosCabelos != 'l' e corDosCabelos != 'C' e corDosCabelos != 'c' e corDosCabelos != 'P' e corDosCabelos != 'p')
			//Fim validar cor dos cabelos
			
			escreva("INFORME A IDADE: ")
			leia (idade)
			//Validar idade
			faca
			{
				se (idade < 0)
				{
					escreva("Idade inválida! Informe um valor maior ou igual a zero: ")
					leia (idade)
				}
			} enquanto (idade < 0)
			//Fim validar idade

			escreva("\n")

			//Encontrar a maior idade do grupo
			se (idade > maiorIdade)
			{
				maiorIdade = idade
			}
			
			//Contar pessoas com os critérios estabelecidos
			se (sexo == 'F' ou sexo =='f' e corDosOlhos == 'V' ou corDosOlhos == 'v' e corDosCabelos == 'L' ou corDosCabelos == 'l' e idade > 17 e idade < 36)
			{
				qtdePessoas = qtdePessoas + 1
			}

		}
		
		escreva("\nA maior idade do grupo é ", maiorIdade, ".\n\n")

		escreva("A quantidade de indivíduos do sexo feminino com olhos verdes, cabelos louros e idade entre 18 e 35 anos presentes nesse grupo é de ", qtdePessoas, ".")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1152; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 26, 19, 5}-{maiorIdade, 26, 26, 10}-{qtdePessoas, 26, 40, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */