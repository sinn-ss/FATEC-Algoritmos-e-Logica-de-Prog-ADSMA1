programa
{
	/*23) (SWITCH/Escolha) Crie um programa que solicite do usuário um mês qualquer, informe quantos dias esse mês possui
	* 	 (28 dias fevereiro)
	*	a. Usando apenas instruções if..else/se..senao
	*	b. Usando switch/escolha sem qualquer break/pare (fica como desafio!!!, fazer em casa)
	*	c. Usando switch/escolha com break/pare
	*	
	*	CÓDIGO POR: SINDEL C. S. SANTOS PARA O CURSO DE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (MANHÃ) DA FATEC SÃO CAETANO DO SUL
	*	DISCIPLINA DE ALGORITMOS E LÓGICA DE PROGRAMAÇÃO MINISTRADA PELO PROFESSOR FLÁVIO VIOTTI
	*	RA: 1680482011032
	*/
	
	funcao inicio()
	{
		inteiro mes
		
		escreva("Olá! Este programa irá te informar quantos dias tem um mês à sua escolha.")
		escreva("Aqui, iremos usar apenas a condicional se/senao")
		escreva("\nPara isso, preciso que você me informe um número de 1 a 12, ok? Fala aí: ")
		leia (mes)
		
		se (mes == 1){
			 escreva("\nVocê selecionou o mês de janeiro.\nEsse mês tem 31 dias!")
		} 
		senao se (mes == 2){
			escreva("\nVocê selecionou o mês de fevereiro! Esse é o único mês do ano que tem apenas 28 dias!")
		}
		senao se (mes == 3){
			escreva("\nVocê selecionou o mês de março.\nEsse mês tem 31 dias!")
		}
		senao se (mes == 4){
			escreva("\nVocê selecionou o mês de abril.\nEsse mês tem 30 dias!")
		}
		senao se (mes == 5){
			escreva("\nVocê selecionou o mês de maio.\nEsse mês tem 31 dias!")
		}
		senao se (mes == 6){
			escreva("\nVocê selecionou o mês de junho.\nEsse mês tem 30 dias!")
		}
		senao se (mes == 7){
			escreva("\nVocê selecionou o mês de julho.\nEsse mês tem 31 dias!")
		}
		senao se (mes == 8){
			escreva("\nVocê selecionou o mês de agosto.\nEsse mês tem 31 dias!")
		}
		senao se (mes == 9){
			escreva("\nVocê selecionou o mês de setembro.\nEsse mês tem 30 dias!")
		}
		senao se (mes == 10){
			escreva("\nVocê selecionou o mês de outubro.\nEsse mês tem 31 dias!")
		}
		senao se (mes == 11){
			escreva("\nVocê selecionou o mês de novembro.\nEsse mês tem 30 dias!")
		}
		senao se (mes == 12){
			escreva("\nVocê selecionou o mês de dezembro.\nEsse mês tem 31 dias!")
		}
		senao {
			escreva("\nOpa! Você inseriu um valor diferente do que foi solicitado!\nTente executar o programa novamente com um valor válido dessa vez, ok?")
		}

		escreva("\n")
		escreva("\nAbaixo, iremos executar o mesmo programa, porém agora usando o 'escolha caso' sem qualquer pare")
		mes = 0
		escreva("\n\nVamos lá! Me informe novamente um número de 1 a 12: ")
		leia (mes)

		escolha (mes){
			caso 1:
				escreva("\nVocê selecionou o mês de janeiro.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 2:
				escreva("\nVocê selecionou o mês de fevereiro! Esse é o único mês do ano que tem apenas 28 dias!")
		}
		escolha (mes){
			caso 3:
				escreva("\nVocê selecionou o mês de março.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 4:
				escreva("\nVocê selecionou o mês de abril.\nEsse mês tem 30 dias!")
		}
		escolha (mes){
			caso 5:
				escreva("\nVocê selecionou o mês de maio.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 6:
				escreva("\nVocê selecionou o mês de junho.\nEsse mês tem 30 dias!")
		}
		escolha (mes){
			caso 7:
				escreva("\nVocê selecionou o mês de julho.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 8:
				escreva("\nVocê selecionou o mês de agosto.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 9:
				escreva("\nVocê selecionou o mês de setembro.\nEsse mês tem 30 dias!")
		}
		escolha (mes){
			caso 10:
				escreva("\nVocê selecionou o mês de outubro.\nEsse mês tem 31 dias!")
		}
		escolha (mes){
			caso 11:
				escreva("\nVocê selecionou o mês de novembro.\nEsse mês tem 30 dias!")
		}
		escolha (mes){
			caso 12:
				escreva("\nVocê selecionou o mês de dezembro.\nEsse mês tem 31 dias!")
		}

		escreva("\n\nVocê tentou colocar um número diferente de 1 a 12?\nSe sim, viu que nada aconteceu, porque não tem como usar o 'caso contrario' aqui. :(")
		escreva("\nMas vamos lá,vamos fazer do jeito certo. Finalmente, agora vamos usar o caso escolha com o pare.")
		escreva("\nMe informe novamente um número de 1 a 12: ")
		mes = 0
		leia (mes)

		escolha (mes){
			caso 1:
				escreva("\nVocê selecionou o mês de janeiro.\nEsse mês tem 31 dias!")
			pare
			
			caso 2:
				escreva("\nVocê selecionou o mês de fevereiro! Esse é o único mês do ano que tem apenas 28 dias!")
			pare
			
			caso 3:
				escreva("\nVocê selecionou o mês de março.\nEsse mês tem 31 dias!")
			pare
			
			caso 4:
				escreva("\nVocê selecionou o mês de abril.\nEsse mês tem 30 dias!")
			pare
			
			caso 5:
				escreva("\nVocê selecionou o mês de maio.\nEsse mês tem 31 dias!")
			pare
			
			caso 6:
				escreva("\nVocê selecionou o mês de junho.\nEsse mês tem 30 dias!")
			pare
			
			caso 7:
				escreva("\nVocê selecionou o mês de julho.\nEsse mês tem 31 dias!")
			pare
			
			caso 8:
				escreva("\nVocê selecionou o mês de agosto.\nEsse mês tem 31 dias!")
			pare
			
			caso 9:
				escreva("\nVocê selecionou o mês de setembro.\nEsse mês tem 30 dias!")
			pare
			
			caso 10:
				escreva("\nVocê selecionou o mês de outubro.\nEsse mês tem 31 dias!")
			pare
			
			caso 11:
				escreva("\nVocê selecionou o mês de novembro.\nEsse mês tem 30 dias!")
			pare
			
			caso 12:
				escreva("\nVocê selecionou o mês de dezembro.\nEsse mês tem 31 dias!")
			pare
			
			caso contrario:
				escreva("\nOpa! Você inseriu um valor diferente do que foi solicitado!\nTente executar o programa novamente com um valor válido dessa vez, ok?")
		}

		escreva("\n\nÉ isso! Obrigado! :)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3786; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */