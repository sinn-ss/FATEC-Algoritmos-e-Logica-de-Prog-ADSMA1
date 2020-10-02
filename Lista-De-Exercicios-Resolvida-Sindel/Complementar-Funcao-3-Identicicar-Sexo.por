programa
{
	//3)	(FUNÇÕES) Crie uma função que receba o dado Sexo que por ser M ou F e devolva o sexo por extenso, ou seja,
	//Masculino ou Feminino. Na função principal solicite do usuário o sexo e faça a validação dessa informação para
	//digitar somente M ou F, e depois exiba por extenso utilizando a função criada anteriormente.

	funcao identificaSexo (caracter sexo)
	{
		se (sexo == 'F' ou sexo == 'f')
		{
			escreva("Sexo: Feminino")
		}
		senao
		{
			escreva("Sexo: Masculino")
		}
	}
	
	funcao inicio()
	{
		caracter sexo
		inteiro chances = 2

		escreva("Chances: ", chances+1, "\n")
		escreva("Informe seu sexo: [M] Masculino | [F] Feminino\n")
		leia(sexo)
		
		enquanto (sexo != 'M' e sexo != 'm' e sexo != 'F' e sexo != 'f' e chances != 0)
		{
			chances = chances - 1
			escreva("ERROU! Chances: ", chances+1, "\n")
			escreva("Informe seu sexo: [M] Masculino | [F] Feminino\n")
			leia(sexo)
		}

		se (chances != 0 e sexo == 'M' ou sexo == 'm' ou sexo == 'F' ou sexo == 'f')
		{
			identificaSexo(sexo)	
		}
		senao
		{
			escreva("Tentativas esgotadas!")	
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */