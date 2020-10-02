programa
{
	/*25) (SWITCH) Em uma loja o vendedor possui 3 opções de desconto e comissão. Solicite do vendedor o tipo de desconto
	 * desejado e o valor total da venda. Ao final apresente o valor da venda com desconto e de sua comissão
	 *	1 – Desconto:20%, comissão:6%
	 *	2 – Desconto:22%, comissão:4%
	 *	3 – Desconto:24%, comissão:2%
	 *	Outros:
	 *	Desconto 18%, comissão 8%
	 *
	 *	CÓDIGO POR: SINDEL C. S. SANTOS PARA O CURSO DE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (MANHÃ) DA FATEC SÃO CAETANO DO SUL
	 *	DISCIPLINA DE ALGORITMOS E LÓGICA DE PROGRAMAÇÃO MINISTRADA PELO PROFESSOR FLÁVIO VIOTTI
	 *	RA: 1680482011032
	 *
	 */
	
	funcao inicio()
	{
		real valorVenda, valorComDesconto, comissao
		caracter tipoDesconto
		
		escreva("Olá! A finalidade desse programa é calcular o desconto do valor da venda e a comissão do vendedor.")
		escreva("\n\nPor favor, me informe primeiro o valor total da venda. Se precisar representar os centavos, utilize ponto ('.'), e não vírgula.")
		escreva("\nR$ ")

		leia (valorVenda)

		escreva("\n\nCerto! Agora, preciso saber o tipo de desconto para aplicar. Para isso, use a referência abaixo:")
		escreva("\n'1' para desconto de 20% (comissão de 6%)")
		escreva("\n'2' para desconto de 22% (comissão de 4%)")
		escreva("\n'3' para desconto de 24% (comissão de 2%)")
		escreva("\nCaso não se encaixe em nenhum desses, digite qualquer outra tecla (será aplicado desconto de 18% com comissão de 8%)")
		escreva("\n\nDigite a opção desejada: ")

		leia (tipoDesconto)

		escolha (tipoDesconto){
			caso '1':
				valorComDesconto = valorVenda * 0.8
				comissao = valorVenda * 0.06
				escreva("\n\nValor total da venda: R$ " + valorVenda)
				escreva("\nValor com 20% de desconto: R$ " + valorComDesconto)
				escreva("\nValor de comissão (6%): R$ " + comissao)
			pare

			caso '2':
				valorComDesconto = valorVenda * 0.78
				comissao = valorVenda * 0.04
				escreva("\n\nValor total da venda: R$ " + valorVenda)
				escreva("\nValor com 22% de desconto: R$ " + valorComDesconto)
				escreva("\nValor de comissão (4%): R$ " + comissao)
			pare

			caso'3':
				valorComDesconto = valorVenda * 0.76
				comissao = valorVenda * 0.02
				escreva("\n\nValor total da venda: R$ " + valorVenda)
				escreva("\nValor com 24% de desconto: R$ " + valorComDesconto)
				escreva("\nValor de comissão (2%): R$ " + comissao)
			pare

			caso contrario:
				valorComDesconto = valorVenda * 0.82
				comissao = valorVenda * 0.08
				escreva("\n\nParece que você não se enquadrou em nenhum dos casos.")
				escreva("\n\nValor total da venda: R$ " + valorVenda)
				escreva("\nValor com 18% de desconto: R$ " + valorComDesconto)
				escreva("\nValor de comissão (8%): R$ " + comissao)
		}

		escreva("\n\nObrigado! Boas vendas! :)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */