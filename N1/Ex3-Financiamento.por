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

	//3)	Programa para Financiamento de imóveis. O Sr. João, dono de uma financeira, precisa saber se um determinado financiamento
	//pode ser feito ou não. Para aprovação do financiamento o solicitante deve obter pelo menos 9 pontos seguindo os critérios abaixo.
	//Mas antes dos cálculos dos pontos é preciso saber algumas informações sobre o valor que será financiado:
	// a.	Valor total do imóvel
	// b.	Valor da entrada
	// c.	Quantidade de parcelas
	// Os critérios para a obtenção dos pontos são:
	// a.	Se casado, 1 ponto
	// b.	Se casado com mais de 4 filhos 0,5 ponto, se menos de 4 filhos 0,8
	// c.	Tempo de serviço maior que 10 anos, no cargo de chefia, 2 pontos, qualquer outro cago 1,5 ponto
	// d.	Se possuir CNH com nenhum ponto nesta carteira nos últimos 2 anos, somar 1.3 pontos
	// e.	Se não possuir CNH, não ganha nenhum ponto
	// f.	Se possuir conta corrente em banco
	//   a.	Media do saldo maior que R$ 15.000 nos últimos 3 meses, 0.9 pontos, se média for de R$ 10.000 nos últimos 5 meses, 1.2 pontos
	//   b.	Havendo valores aplicados em poupança com mais de R$ 8.000 no último mês, mais 0.5 pontos, se menos que R$ 8.000 mas maior que
	//        R$ 5.000, 0.3 pontos
	// g.	Se possuir carro
	//   a.	O carro é do ano de 2020, se sim 1 ponto, se não, verificar se é pelo menos a partir do ano de 2005, se sim 0.7 pontos
	//   b.	É da marca JEEP, mais 0.3 pontos
	//   c.	É da marca Hyundai, mas 0.2 pontos
	//   d.	É da marca VW, menos 0.2 pontos
	//Após verificar a pontuação do solicitante, informe a situação final para ele.

	
	funcao inicio()
	{
		real valorImovel, valorEntrada, pontuacao=0.0, mediaSaldo3=0.0, mediaSaldo5=0.0, valorPoupanca=0.0
		inteiro qtdeParcelas, anoCarro
		caracter yesno, yesno2
		
		escreva ("***** PROGRAMA FINANCIAMENTO *****\n")

		//Coleta de dados do financiamento
		escreva ("Informe o valor total do imóvel: R$ ")
		leia (valorImovel)
		escreva ("Informe o valor de entrada: R$ ")
		leia (valorEntrada)
		escreva ("Informe a quantidade de parcelas: ")
		leia (qtdeParcelas)

		//Início de perguntas
		escreva ("\nResponda às seguintes questões para prosseguirmos com a solicitação:\n")
		
		//Verifica se é casado
		escreva("Você é casado? (Responda 'S' para Sim ou 'N' para Não)\n")
		leia (yesno)
		
		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		//Soma da pontuação de acordo com a resposta
		se (yesno == 'S' ou yesno == 's')
		{
			pontuacao = pontuacao + 1 
		}
		//Fim Verifica se é casado

		//Verifica se possui 4 filhos ou mais
		escreva("\nVocê possui 4 filhos ou mais? (Responda 'S' para Sim ou 'N' para Não)\n")
		leia (yesno)

		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		//Soma da pontuação de acordo com a resposta
		se (yesno == 'S' ou yesno == 's')
		{
			pontuacao = pontuacao + 0.5 
		}
		senao se (yesno == 'N' ou yesno == 'n')
		{
			pontuacao = pontuacao + 0.8
		}
		//Fim Verifica se possui 4 filhos ou mais

		
		//Verifica se possui mais de 10 anos de tempo de serviço
		escreva("\nVocê possui 10 anos ou mais de tempo de serviço? (Responda 'S' para Sim ou 'N' para Não)\n")
		leia (yesno)

		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		//Caso tenha atuad por mais de 10 anos, verifica se foi em cargo de chefia ou em outros cargos
		se (yesno == 'S' ou yesno == 's')
		{
			//Verifica se atuou em cargo de chefia
			escreva("Você atuava em cargo de chefia? (Responda 'S' para Sim ou 'N' para Não)\n")
			leia (yesno2)
			
			//Validação de resposta
			faca
			{
				se (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
				{
					escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
					leia (yesno2)
				}
			} enquanto (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
			//Fim validação de resposta

			//Soma da pontuação de acordo com o cargo
			se (yesno2 == 'S'ou yesno2 == 's')
			{
				pontuacao = pontuacao + 2
			}
			senao
			{
				pontuacao = pontuacao + 1.5
			}	
		}
		//Fim Verifica se possui mais de 10 anos de tempo de serviço

		//Verifica se possui CNH
		escreva("\nVocê possui CNH? (Responda 'S' para Sim ou 'N' para Não)\n")
		leia (yesno)

		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		se (yesno == 'S'ou yesno == 's') {
			
			//Verifica se está há mais de 2 anos sem pontuação
			escreva("Está há mais de 2 anos sem nenhuma pontuação na CNH? (Responda 'S' para Sim ou 'N' para Não)\n")
			leia (yesno2)

			//Validação de resposta
			faca
			{
				se (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
				{
					escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
					leia (yesno2)
				}
			} enquanto (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
			//Fim validação de resposta

			//Soma a pontuação se tiver CNH e se estiver há mais de 2 anos sem pontuação
			se (yesno2 == 'S' ou yesno2 == 's') {
				pontuacao = pontuacao + 1.3
			}
		}
		//Fim Verifica se possui CNH

		//Verifica se possui conta corrente em banco
		escreva("\nVocê possui conta corrente em banco? (Responda 'S' para Sim ou 'N' para Não)\n")
		leia (yesno)

		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		se (yesno == 'S' ou yesno == 's')
		{
			//Solicita a média do saldo da conta nos últimos 3 meses
			escreva("Informe a média do saldo de sua conta nos últimos 3 meses: R$ ")
			leia (mediaSaldo3)
			//Solicita a média do saldo da conta nos últimos 5 meses
			escreva("Informe a média de saldo de sua conta nos últimos 5 meses: R$ ")
			leia (mediaSaldo5)

			se (mediaSaldo5 > 10000)
			{
				pontuacao = pontuacao + 1.2
			}
			se (mediaSaldo3 > 15000)
			{
				pontuacao = pontuacao + 0.9
			}

			//Verifica se possui poupança
			escreva("\nVocê possui valores aplicados em poupança?\n")
			leia (yesno2)
		
			//Validação de resposta
			faca
			{
				se (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
				{
					escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
					leia (yesno2)
				} 
			} enquanto (yesno2 != 'S' e yesno2 != 'N' e yesno2 != 's' e yesno2 != 'n')
			//Fim validação de resposta
		
			se (yesno2 == 'S' ou yesno2 == 's')
			{
				escreva("Qual o valor aplicado em poupança no mês passado? R$ ")
				leia (valorPoupanca)
				faca
				{
					se (valorPoupanca <= 0)
					{
						escreva("O valor informado deve ser maior do que zero! R$ ")
						leia (valorPoupanca)
					}
				} enquanto (valorPoupanca <= 0)
				se (valorPoupanca > 8000)
				{
					pontuacao = pontuacao + 0.5
				}
				senao se (valorPoupanca <= 8000 e valorPoupanca > 5000)
				{
					pontuacao = pontuacao + 0.3
				}
			}
		}
		//Fim Verifica se possui conta corrente em banco

		//Verifica carro
		escreva ("\nVocê possui carro?\n")
		leia (yesno)

		//Validação de resposta
		faca
		{
			se (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
			{
				escreva("Você deve informar 'S' para Sim ou 'N' para Não!\n")
				leia (yesno)
			}
		} enquanto (yesno != 'S' e yesno != 'N' e yesno != 's' e yesno != 'n')
		//Fim validação de resposta

		se (yesno == 'S' ou yesno == 's')
		{
			escreva("Informe o ano do carro: ")
			leia (anoCarro)

			faca
			{
				se (anoCarro < 1886 ou anoCarro > 2020)
				{
					escreva ("Ano inválido! Informe um ano válido: ")
					leia (anoCarro)
				}
			} enquanto (anoCarro < 1886 ou anoCarro > 2020)

			se (anoCarro == 2020)
			{
				pontuacao = pontuacao + 1
			}
			senao se (anoCarro < 2020 e anoCarro >= 2005)
			{
				pontuacao = pontuacao + 0.7
			}
			
			escreva("\nInforme a marca do carro:\n")
			escreva("[J] para Jeep\n")
			escreva("[H] para Hyundai\n")
			escreva("[V] para Volkswagen\n")
			escreva("[O] para Outros\n")
			leia (yesno2)

			//Validação de resposta
			faca
			{
				se (yesno2 != 'J' e yesno2 != 'j' e yesno2 != 'H' e yesno2 != 'h' e yesno2 != 'V' e yesno2 != 'v' e yesno2 != 'O' e yesno2 != 'o')
				{
					escreva("Opção inválida! Selecione [J], [H], [V] ou [O]: ")
					leia (yesno2)
				}
			} enquanto (yesno2 != 'J' e yesno2 != 'j' e yesno2 != 'H' e yesno2 != 'h' e yesno2 != 'V' e yesno2 != 'v' e yesno2 != 'O' e yesno2 != 'o')
			//Fim validação de resposta

			se (yesno2 == 'J' ou yesno2 == 'j')
			{
				pontuacao = pontuacao + 0.3
			}
			senao se (yesno2 == 'H' ou yesno2 == 'h' ou yesno2 == 'V' ou yesno2 == 'v')
			{
				pontuacao = pontuacao + 0.2
			}
		
		}
		//Fim Verifica carro

		//Informa o resultado
		se (pontuacao >= 9)
		{
			escreva("\nApós a análise de seus dados, seu financiamento foi aprovado!\n")
			escreva("Pontuação: ", pontuacao)
		}
		senao
		{
			escreva("\nSentimos muito. Após a análise de seus dados, não foi possível aprovar o seu financiamento.\n")
			escreva("Pontuação: ", pontuacao)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pontuacao, 40, 34, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */