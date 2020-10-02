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

	//3) Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário. A seguir, calcule o menor
	//número de notas e moedas possíveis no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2. As moedas
	//possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01. A seguir mostre a relação de notas necessárias.

	//Exemplo de Entrada	Exemplo de Saída
	//576.73
	//NOTAS:
	//5 nota(s) de R$ 100.00
	//1 nota(s) de R$ 50.00
	//1 nota(s) de R$ 20.00
	//0 nota(s) de R$ 10.00
	//1 nota(s) de R$ 5.00
	//0 nota(s) de R$ 2.00
	//MOEDAS:
	//1 moeda(s) de R$ 1.00
	//1 moeda(s) de R$ 0.50
	//0 moeda(s) de R$ 0.25
	//2 moeda(s) de R$ 0.10
	//0 moeda(s) de R$ 0.05
	//3 moeda(s) de R$ 0.01
	//4.00
	//NOTAS:
	//0 nota(s) de R$ 100.00
	//0 nota(s) de R$ 50.00
	//0 nota(s) de R$ 20.00
	//0 nota(s) de R$ 10.00
	//0 nota(s) de R$ 5.00
	//2 nota(s) de R$ 2.00
	//MOEDAS:
	//0 moeda(s) de R$ 1.00
	//0 moeda(s) de R$ 0.50
	//0 moeda(s) de R$ 0.25
	//0 moeda(s) de R$ 0.10
	//0 moeda(s) de R$ 0.05
	//0 moeda(s) de R$ 0.01
	//91.01
	//NOTAS:
	//0 nota(s) de R$ 100.00
	//1 nota(s) de R$ 50.00
	//2 nota(s) de R$ 20.00
	//0 nota(s) de R$ 10.00
	//0 nota(s) de R$ 5.00
	//0 nota(s) de R$ 2.00
	//MOEDAS:
	//1 moeda(s) de R$ 1.00
	//0 moeda(s) de R$ 0.50
	//0 moeda(s) de R$ 0.25
	//0 moeda(s) de R$ 0.10
	//0 moeda(s) de R$ 0.05
	//1 moeda(s) de R$ 0.01

	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real valorTotal, valorArredondado
		inteiro nota100=0, nota50=0, nota20=0, nota10=0, nota5=0, nota2=0, moeda100=0 , moeda50=0, moeda25=0, moeda10=0, moeda5=0, moeda1=0

		escreva ("Informe um valor em dinheiro: R$ ")
		leia (valorTotal)
		valorArredondado = mat.arredondar(valorTotal, 2)
		valorTotal = valorArredondado

		faca {
			se (valorTotal <=0) {
				escreva("Informe um valor acima de zero! Informe um valor em dinheiro: R$ ")
				leia (valorTotal)
				valorArredondado = mat.arredondar(valorTotal, 2)
				valorTotal = valorArredondado
			}
		} enquanto (valorTotal <= 0)


		faca {
			se (valorTotal != 0.0) {
				se (valorTotal >= 100) {
					valorTotal = valorTotal - 100
					nota100 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 50) {
					valorTotal = valorTotal - 50
					nota50 += 1 
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 20) {
					valorTotal = valorTotal - 20
					nota20 = 1	
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 10) {
					valorTotal = valorTotal -10
					nota10 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 5) {
					valorTotal = valorTotal - 5
					nota5 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 2) {
					valorTotal = valorTotal - 2
					nota2 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 1) {
					valorTotal = valorTotal - 1
					moeda100 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 0.50) {
					valorTotal = valorTotal - 0.50
					moeda50 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 0.25) {
					valorTotal = valorTotal - 0.25
					moeda25 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 0.10) {
					valorTotal = valorTotal - 0.10
					moeda10 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 0.05) {
					valorTotal = valorTotal - 0.05
					moeda5 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
				senao se (valorTotal >= 0.01) {
					valorTotal = valorTotal - 0.01
					moeda1 += 1
					valorArredondado = mat.arredondar(valorTotal, 2)
					valorTotal = valorArredondado
					escreva(valorTotal,"\n")
				}
			}
		} enquanto (valorTotal != 0.0)

		escreva("\nSerão necessárias: \n")
		escreva(nota100, " nota(s) de R$ 100.00\n")
		escreva(nota50, " nota(s) de R$ 50.00\n")
		escreva(nota20, " nota(s) de R$ 20.00\n")
		escreva(nota10, " nota(s) de R$ 10.00\n")
		escreva(nota5, " nota(s) de R$ 5.00\n")
		escreva(nota2, " nota(s) de R$ 2.00\n\n")
		
		escreva(moeda100, " moeda(s) de R$ 1.00\n")
		escreva(moeda50, " moeda(s) de R$ 0.50\n")
		escreva(moeda25, " moeda(s) de R$ 0.25\n")
		escreva(moeda10, " moeda(s) de R$ 0.10\n")
		escreva(moeda5, " moeda(s) de R$ 0.05\n")
		escreva(moeda1, " moeda(s) de R$ 0.01\n")
		
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4990; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */