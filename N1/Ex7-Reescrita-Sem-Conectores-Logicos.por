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

	//7)	Dado o trecho de código abaixo, reescreva-o SEM o uso dos operadores lógicos (E) e (OU): 

	//inteiro a, b, c, d
	////atribuição aleatória de valores...
	//se(a == 8 e b > 7 ou c < 10) {
	//	d = 157
	//} senao {
	//	d = -100
	//}

	funcao inicio()
	{
		inteiro a, b, c, d
		
		a = 8, b = 8, c = 9, d = 0
		
		//CODIGO ORIGINAL DO EXERCICIO
		//se (a == 8 e b > 7 ou c < 10)
		//{
		//	d = 157
		//}
		//senao
		//{
		//	d = -100
		//}
		//FIM CODIGO ORIGINAL DO EXERCICIO

		se (a == 8)
		{
			se (b > 7)
			{
				d = 157
			}
			senao se (c < 10)
			{
				d = 157
			}
			senao
			{
				d = -100
			}
		}
		senao
		{
			d = -100
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 889; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {a, 26, 10, 1}-{b, 26, 13, 1}-{c, 26, 16, 1}-{d, 26, 19, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */