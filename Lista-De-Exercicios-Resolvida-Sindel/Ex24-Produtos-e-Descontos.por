programa
{
	/*24) (SWITCH) Crie um programa em C que solicite do usuário o valor de um produto e o tipo do cliente, sendo “E-Estudante”,
	 * “A-Assalariado” ou “P-aPosentado”. Apresente o valor a ser pago pelo produto oferecendo os seguintes descontos: 15% para
	 * Estudantes, 10 % para Assalariados e 25% para Aposentados. Se o tipo do cliente não for nenhum desses, nenhum desconto
	 * deverá ser aplicado. Como complemento, você pode, em casa, resolver o mesmo problema usando somente if’s.
	 * 
	 *	CÓDIGO POR: SINDEL C. S. SANTOS PARA O CURSO DE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (MANHÃ) DA FATEC SÃO CAETANO DO SUL
	 *	DISCIPLINA DE ALGORITMOS E LÓGICA DE PROGRAMAÇÃO MINISTRADA PELO PROFESSOR FLÁVIO VIOTTI
	 *	RA: 1680482011032
	 */
	 
	funcao inicio()
	{
		caracter tipoCliente
		real valorProduto, valorComDesconto

		escreva("### RESOLUÇÃO COM ESCOLHA CASO ###")
		escreva("\n\nOlá! Esse programa tem a finalidade de informar o desconto sobre o valor de um determinado produto.")
		escreva("\nPara isso, primeiro, preciso que você me informe o valor do produto que deseja comprar.")
		escreva("\n(Por favor, utilize ponto (.) para representação de centavos e não vírgula!)  R$ ")
		
		leia (valorProduto)

		escreva("\n\nÓtimo! Agora, preciso saber que tipo de cliente você é.")
		escreva("\nSe você não se encaixar em nenhum dos três, pode digitar qualquer outra letra, ok?")
		escreva("\nPara isso, preciso que você me informe apenas uma letra de acordo com a legenda abaixo:")
		escreva("\n'E' para Estudante (15% de Desconto)\n'A' para Assalariado (10% de Desconto)\n'P' para aPosentado (25% de Desconto)")
		escreva("\n")
		
		leia (tipoCliente)

		escolha (tipoCliente){
			caso 'E':
			caso 'e':
				valorComDesconto = valorProduto * 0.85
				escreva("\nOlá Estudante! O valor original do seu produto é de R$ " + valorProduto + ".")
				escreva("\nCom 15% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
			pare

			caso 'A':
			caso 'a':
				valorComDesconto = valorProduto * 0.90
				escreva("\nOlá Assalariado! O valor original do seu produto é de RS " + valorProduto + ".")
				escreva("\nCom 10% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
			pare

			caso 'P':
			caso 'p':
				valorComDesconto = valorProduto * 0.75
				escreva("\nOlá Aposentado! O valor original do seu produto é de R$ " + valorProduto + ".")
				escreva("\nCom 25% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
			pare

			caso contrario:
				escreva("\nOpa! Parece que você não se encaixa em nenhum desses 3 perfis.")
				escreva("\nNesse caso, iremos manter o valor original de R$ " + valorProduto + ", ok?")
		}

		escreva("\n\nObrigada por nos consultar! :)")

		valorProduto = 0.0
		valorComDesconto = 0.0
		tipoCliente = 'X'

		escreva("\n\n### RESOLUÇÃO COM SE/SENAO ###")
		escreva("\n\nOlá! Esse programa tem a finalidade de informar o desconto sobre o valor de um determinado produto.")
		escreva("\nPara isso, primeiro, preciso que você me informe o valor do produto que deseja comprar.")
		escreva("\n(Por favor, utilize ponto (.) para representação de centavos e não vírgula!)  R$ ")

		leia (valorProduto)

		escreva("\n\nÓtimo! Agora, preciso saber que tipo de cliente você é.")
		escreva("\nSe você não se encaixar em nenhum dos três, pode digitar qualquer outra letra, ok?")
		escreva("\nPara isso, preciso que você me informe apenas uma letra de acordo com a legenda abaixo:")
		escreva("\n'E' para Estudante (15% de Desconto)\n'A' para Assalariado (10% de Desconto)\n'P' para aPosentado (25% de Desconto)")
		escreva("\n")
		
		leia (tipoCliente)

		se (tipoCliente == 'E' ou tipoCliente == 'e'){
			valorComDesconto = valorProduto * 0.85
			escreva("\nOlá Estudante! O valor original do seu produto é de R$ " + valorProduto + ".")
			escreva("\nCom 15% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
		}
		senao se (tipoCliente == 'A' ou tipoCliente == 'a'){
			valorComDesconto = valorProduto * 0.90
			escreva("\nOlá Assalariado! O valor original do seu produto é de RS " + valorProduto + ".")
			escreva("\nCom 10% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
		}
		senao se (tipoCliente == 'P' ou tipoCliente =='p'){
			valorComDesconto = valorProduto * 0.75
			escreva("\nOlá Aposentado! O valor original do seu produto é de R$ " + valorProduto + ".")
			escreva("\nCom 25% de desconto, o novo valor passa a ser R$ " + valorComDesconto + ".")
		}
		senao {
			escreva("\nOpa! Parece que você não se encaixa em nenhum desses 3 perfis.")
			escreva("\nNesse caso, iremos manter o valor original de R$ " + valorProduto + ", ok?")
		}

		escreva("\n\nObrigada por nos consultar! :)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */