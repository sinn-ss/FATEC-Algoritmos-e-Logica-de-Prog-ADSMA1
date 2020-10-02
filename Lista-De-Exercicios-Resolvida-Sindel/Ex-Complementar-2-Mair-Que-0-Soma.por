programa
{
	//Faça um programa que solicite do usuário a digitação de 10 números. Ao final da digitação, apresente quantos números são
	//maiores que zero, juntamente com sua somatória
	
	funcao inicio()
	{
		inteiro contador, numero = 0, soma = 0, positivos = 0

		para (contador=1;contador<=10;contador++){
			escreva("Digite um número: ")
			leia(numero)
			se (numero>0){
				soma = soma+numero
				positivos++
			}
		}

		escreva("\nVocê informou ", positivos, " números acima de zero.")
		escreva("\nA soma destes números é de ", soma, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */