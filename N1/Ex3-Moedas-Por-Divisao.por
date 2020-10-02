/*3)	Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário. 
 A seguir, calcule o menor número de notas e moedas possíveis no qual o valor pode ser decomposto. 
 As notas consideradas  são de 100, 50, 20, 10, 5, 2. As moedas possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01. 
 A seguir mostre a relação de notas necessárias.*/






programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tip
	funcao inicio()
	{
		
		real valor, arred, valorM
		inteiro valorI,valorMI, n100, n50, s100, s50, s20, n20, s10, n10, s5, n5, s2, n2, s1, n1  //variaveis necessários para contar as notas e a moeda de 1 real
		inteiro  m50, sm50, m25, sm25, m10, sm10, m5, sm5, m1, soma
		

		
		escreva("Digite um valor monetário:\n")
		leia (valor)
		arred = mat.arredondar(valor, 2)
		//escreva (arred)

		//calculando o número de notas de 100

		valorI = tip.real_para_inteiro(valor)
		n100 = valorI/100
		s100 = valorI%100
		n50 = s100/50
		s50 = s100%50
		n20 = s50/20
		s20 = s50%20
		n10 = s20/10
		s10 = s20%10
		n5 = s10/5
		s5 = s10%5
		n2 = s5/2
		s2 = s5%2
		n1 = s2/1

		
		valorM = (valor - valorI)*100
		
		valorMI = tip.real_para_inteiro(valorM)
		m50 = valorMI/50
		sm50 = valorMI%50
		m25 = sm50/25
		sm25= sm50%25
		m10 = sm25/10
		sm10 = sm25%10
		m5 = sm10/5
		sm5 = sm10%5
		m1 = sm5

		soma = n100 + n50 + n20 + n10 + n5 + n2 + n1 + m50 + m25 + m10 + m5 + m1

		escreva(m1)
		
		escreva("\nPara decompor o valor R$", arred, " Serão necessárias  ",soma, " notas e/ou moedas, sendo elas:\n"
		, n100, " notas de R$100\n " , n50, " notas de R$50\n " , n20 , " notas de R$20\n", 
		n10, " notas de R$10\n", n5, " notas de R$5\n", n2 , " notas de R$2\n", n1 , " moedas de R$1\n",
		m50, " moedas de R$0,50\n", m25 , " moedas de R$ 0,25\n", m10 , " moedas de R$ 0,10\n", m5, " moedas de R$0,05\n", m1, " moedas de R$0,01.") 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1886; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 18, 7, 5}-{arred, 18, 14, 5}-{m1, 20, 53, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */