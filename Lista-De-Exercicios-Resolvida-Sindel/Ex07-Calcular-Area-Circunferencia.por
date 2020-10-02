programa
{
	//7)	(ADS MA1-IO) Crie um programa para realizar o cálculo da área de uma circunferência, sendo a formula A = pi*R2.
	//Solicite o valor do raio para o usuário, efetue o cálculo e exiba o valor. Lembre-se pi=3.1415
	funcao inicio()
	{
		real raio, area
		
		escreva("***** CALCULAR A ÁREA DA CIRCUNFERÊNCIA *****\n")
		escreva("Informe o valor do raio da circunferência: ")
		leia (raio)
		area = 3.1415 * (raio*raio)
		escreva("\nO valor da área da circunferência é de ", area, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 495; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */