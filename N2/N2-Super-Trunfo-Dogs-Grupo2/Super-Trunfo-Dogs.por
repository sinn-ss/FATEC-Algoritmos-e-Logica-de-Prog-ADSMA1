programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Graficos --> g
	inclua biblioteca Tipos --> tp

	const logico EXECUCAO = verdadeiro

	const inteiro MENU = 1
	const inteiro COMO_JOGAR = 2
	const inteiro VEZ_JOGADOR = 3
	const inteiro VEZ_OPONENTE = 4
	const inteiro CONFIRMAR_SAIDA = 5
	const inteiro RESULTADO_RODADA = 6
	const inteiro FIM_DE_JOGO = 7

	const inteiro GANHOU = 1
	const inteiro PERDEU = 2
	const inteiro EMPATOU = 3

	const inteiro JOGADOR = 1
	const inteiro OPONENTE = 2

	cadeia cartas[6][32]
	inteiro cartas_embaralhadas[32]
	inteiro deck_jogador[32]
	inteiro deck_oponente[32]
	inteiro deck_empate[32]

	inteiro seleciona_atributos_oponente[5]
	inteiro atributo_oponente = 0
	inteiro posicao_atributo_mais_forte = -1
	inteiro posicao_atributo_mais_forte2 = -1

	inteiro fundo = 0
	inteiro imagem_resultado = 0

	inteiro i, j, k
	inteiro carta_sorteada
	logico carta_repetida

	inteiro tela_atual = MENU
	inteiro tela_anterior = 0

	inteiro qtde_cartas_jogador = 0
	inteiro qtde_cartas_oponente = 0
	inteiro qtde_cartas_empate = 0
	inteiro carta_jogador = -1
	inteiro carta_oponente = -1
	inteiro resultado
	inteiro atributo_selecionado = -1

	inteiro vencedor = 0
	inteiro vez = JOGADOR
	inteiro carta = 0
	inteiro selecao = 0
	inteiro selecao_oponente = 0
	inteiro sua_vez = 0
	inteiro vez_oponente = 0
	inteiro barra_comandos = 0

	inteiro tecla_pressionada

	funcao dados_cartas()
	{
		//CARTA 0 - VIRA LATA CARAMELO
		cartas[0][0] = "images/cartas/carta-0-vira-lata-caramelo.png"
		cartas[1][0] = "92"
		cartas[2][0] = "80"
		cartas[3][0] = "94"
		cartas[4][0] = "88"
		cartas[5][0] = "85"

		//CARTA 1 - AKITA
		cartas[0][1] = "images/cartas/carta-1-akita.png"
		cartas[1][1] = "90"
		cartas[2][1] = "70"
		cartas[3][1] = "89"
		cartas[4][1] = "75"
		cartas[5][1] = "13"

		//CARTA 2 - BOXER
		cartas[0][2] = "images/cartas/carta-2-boxer.png"
		cartas[1][2] = "47"
		cartas[2][2] = "63"
		cartas[3][2] = "93"
		cartas[4][2] = "85"
		cartas[5][2] = "19"

		//CARTA 3 - DOBERMAN
		cartas[0][3] = "images/cartas/carta-3-doberman.png"
		cartas[1][3] = "88"
		cartas[2][3] = "72"
		cartas[3][3] = "83"
		cartas[4][3] = "78"
		cartas[5][3] = "17"

		//CARTA 4 - GOLDEN RETRIEVER
		cartas[0][4] = "images/cartas/carta-4-golden-retriever.png"
		cartas[1][4] = "93"
		cartas[2][4] = "61"
		cartas[3][4] = "12"
		cartas[4][4] = "87"
		cartas[5][4] = "92"

		//CARTA 5 - HUSKY SIBERIANO
		cartas[0][5] = "images/cartas/carta-5-husky-siberiano.png"
		cartas[1][5] = "85"
		cartas[2][5] = "60"
		cartas[3][5] = "88"
		cartas[4][5] = "23"
		cartas[5][5] = "75"

		//CARTA 6 - LABRADOR
		cartas[0][6] = "images/cartas/carta-6-labrador.png"
		cartas[1][6] = "77"
		cartas[2][6] = "62"
		cartas[3][6] = "63"
		cartas[4][6] = "83"
		cartas[5][6] = "98"

		//CARTA 7 - ROTTWEILER
		cartas[0][7] = "images/cartas/carta-7-rottweiler.png"
		cartas[1][7] = "72"
		cartas[2][7] = "65"
		cartas[3][7] = "93"
		cartas[4][7] = "99"
		cartas[5][7] = "15"

		//CARTA 8 - SÃO BERNARDO
		cartas[0][8] = "images/cartas/carta-8-sao-bernardo.png"
		cartas[1][8] = "34"
		cartas[2][8] = "90"
		cartas[3][8] = "86"
		cartas[4][8] = "32"
		cartas[5][8] = "63"

		//CARTA 9 - DÁLMATA
		cartas[0][9] = "images/cartas/carta-9-dalmata.png"
		cartas[1][9] = "89"
		cartas[2][9] = "75"
		cartas[3][9] = "85"
		cartas[4][9] = "91"
		cartas[5][9] = "83"

		//CARTA 10 - OLD ENGLISH SHEEPDOG
		cartas[0][10] = "images/cartas/carta-10-old-english-sheepdog.png"
		cartas[1][10] = "39"
		cartas[2][10] = "85"
		cartas[3][10] = "81"
		cartas[4][10] = "50"
		cartas[5][10] = "61"

		//CARTA 11 - BEAGLE
		cartas[0][11] = "images/cartas/carta-11-beagle.png"
		cartas[1][11] = "17"
		cartas[2][11] = "41"
		cartas[3][11] = "35"
		cartas[4][11] = "47"
		cartas[5][11] = "63"

		//CARTA 12 - BULDOGUE
		cartas[0][12] = "images/cartas/carta-12-buldogue.png"
		cartas[1][12] = "42"
		cartas[2][12] = "48"
		cartas[3][12] = "56"
		cartas[4][12] = "41"
		cartas[5][12] = "67"

		//CARTA 13 - CHOW CHOW
		cartas[0][13] = "images/cartas/carta-13-chow-chow.png"
		cartas[1][13] = "13"
		cartas[2][13] = "51"
		cartas[3][13] = "23"
		cartas[4][13] = "25"
		cartas[5][13] = "69"

		//CARTA 14 - POODLE
		cartas[0][14] = "images/cartas/carta-14-poodle.png"
		cartas[1][14] = "95"
		cartas[2][14] = "35"
		cartas[3][14] = "42"
		cartas[4][14] = "29"
		cartas[5][14] = "58"

		//CARTA 15 - PITBULL
		cartas[0][15] = "images/cartas/carta-15-pitbull.png"
		cartas[1][15] = "75"
		cartas[2][15] = "53"
		cartas[3][15] = "95"
		cartas[4][15] = "71"
		cartas[5][15] = "39"

		//CARTA 16 - PASTOR ALEMÃO
		cartas[0][16] = "images/cartas/carta-16-pastor-alemao.png"
		cartas[1][16] = "51"
		cartas[2][16] = "50"
		cartas[3][16] = "67"
		cartas[4][16] = "89"
		cartas[5][16] = "37"

		//CARTA 17 - SCHNAUZER
		cartas[0][17] = "images/cartas/carta-17-schnauzer.png"
		cartas[1][17] = "66"
		cartas[2][17] = "50"
		cartas[3][17] = "69"
		cartas[4][17] = "69"
		cartas[5][17] = "45"

		//CARTA 18 - BULL TERRIER
		cartas[0][18] = "images/cartas/carta-18-bull-terrier.png"
		cartas[1][18] = "31"
		cartas[2][18] = "53"
		cartas[3][18] = "72"
		cartas[4][18] = "55"
		cartas[5][18] = "32"

		//CARTA 19 - SHIBA
		cartas[0][19] = "images/cartas/carta-19-shiba.png"
		cartas[1][19] = "55"
		cartas[2][19] = "43"
		cartas[3][19] = "83"
		cartas[4][19] = "43"
		cartas[5][19] = "71"

		//CARTA 20 - PASTOR DE SHETLAND
		cartas[0][20] = "images/cartas/carta-20-pastor-de-shetland.png"
		cartas[1][20] = "82"
		cartas[2][20] = "40"
		cartas[3][20] = "78"
		cartas[4][20] = "67"
		cartas[5][20] = "27"

		//CARTA 21 - SPANIEL BRETÃO
		cartas[0][21] = "images/cartas/carta-21-spaniel-bretao.png"
		cartas[1][21] = "29"
		cartas[2][21] = "52"
		cartas[3][21] = "75"
		cartas[4][21] = "63"
		cartas[5][21] = "23"

		//CARTA 22 - CHIHUAHUA
		cartas[0][22] = "images/cartas/carta-22-chihuahua.png"
		cartas[1][22] = "25"
		cartas[2][22] = "23"
		cartas[3][22] = "98"
		cartas[4][22] = "7"
		cartas[5][22] = "87"

		//CARTA 23 - CORGI
		cartas[0][23] = "images/cartas/carta-23-corgi.png"
		cartas[1][23] = "60"
		cartas[2][23] = "30"
		cartas[3][23] = "29"
		cartas[4][23] = "15"
		cartas[5][23] = "78"

		//CARTA 24 - LHASA APSO
		cartas[0][24] = "images/cartas/carta-24-lhasa-apso.png"
		cartas[1][24] = "23"
		cartas[2][24] = "26"
		cartas[3][24] = "40"
		cartas[4][24] = "19"
		cartas[5][24] = "47"

		//CARTA 25 - LULU DA POMERÂNIA
		cartas[0][25] = "images/cartas/carta-25-lulu-da-pomerania.png"
		cartas[1][25] = "14"
		cartas[2][25] = "25"
		cartas[3][25] = "17"
		cartas[4][25] = "28"
		cartas[5][25] = "75"

		//CARTA 26 - MALTÊS
		cartas[0][26] = "images/cartas/carta-26-maltes.png"
		cartas[1][26] = "5"
		cartas[2][26] = "24"
		cartas[3][26] = "25"
		cartas[4][26] = "12"
		cartas[5][26] = "49"

		//CARTA 27 - PINSCHER
		cartas[0][27] = "images/cartas/carta-27-pinscher.png"
		cartas[1][27] = "54"
		cartas[2][27] = "32"
		cartas[3][27] = "90"
		cartas[4][27] = "21"
		cartas[5][27] = "26"

		//CARTA 28 - PUG
		cartas[0][28] = "images/cartas/carta-28-pug.png"
		cartas[1][28] = "9"
		cartas[2][28] = "30"
		cartas[3][28] = "32"
		cartas[4][28] = "38"
		cartas[5][28] = "59"

		//CARTA 29 - YORKSHIRE
		cartas[0][29] = "images/cartas/carta-29-yorkshire.png"
		cartas[1][29] = "11"
		cartas[2][29] = "22"
		cartas[3][29] = "27"
		cartas[4][29] = "3"
		cartas[5][29] = "81"

		//CARTA 30 - SHIH TZU
		cartas[0][30] = "images/cartas/carta-30-shih-tzu.png"
		cartas[1][30] = "21"
		cartas[2][30] = "27"
		cartas[3][30] = "37"
		cartas[4][30] = "5"
		cartas[5][30] = "53"

		//CARTA 31 - PEQUINÊS
		cartas[0][31] = "images/cartas/carta-31-pequines.png"
		cartas[1][31] = "15"
		cartas[2][31] = "21"
		cartas[3][31] = "39"
		cartas[4][31] = "1"
		cartas[5][31] = "56"
	}

	funcao definir_decks()
	{		
		para (i = 0; i < 32; i++)
		{
			deck_jogador[i] = 50
			deck_oponente[i] = 50
			deck_empate[i] = 50
		}
		
		i = 0
		faca
		{
			carta_sorteada = u.sorteia(0, 31)

			carta_repetida = falso

			para (j = 0; j < i; j++)
			{
				se (carta_sorteada == cartas_embaralhadas[j])
				{
					carta_repetida = verdadeiro
				}
			}
			se (carta_repetida == falso)
			{
				cartas_embaralhadas[i] = carta_sorteada
				i++
			}
		} enquanto (i < 32)
		
		para (i = 0; i < 16; i++)
		{
			deck_jogador[i] = cartas_embaralhadas[i]
			deck_oponente[i] = cartas_embaralhadas[i+16]
		}
	}

	funcao contar_cartas()
	{
		k = 0
		qtde_cartas_jogador = 0
		qtde_cartas_oponente = 0
		qtde_cartas_empate = 0
		enquanto (deck_jogador[k] != 50 e k < 31)
		{
			qtde_cartas_jogador++
			k++ 
		}

		k = 0
		enquanto (deck_oponente[k] != 50 e k < 31)
		{
			qtde_cartas_oponente++
			k++
		}

		k = 0
		enquanto (deck_empate[k] != 50 e k < 31)
		{
			qtde_cartas_empate++
			k++
		}
	}

	funcao inicializar()
	{
		g.iniciar_modo_grafico(falso)
		g.definir_titulo_janela("...::: SUPER TRUNFO - DOGS :::...")
		g.definir_dimensoes_janela(800, 600)
		dados_cartas()
		exibir_menu()
	}

	funcao liberar_imagem_fundo()
	{
		g.liberar_imagem(fundo)
	}

	funcao comparar_cartas()
	{
		inteiro compara_carta_jogador, compara_carta_oponente
		compara_carta_jogador = tp.cadeia_para_inteiro(cartas[atributo_selecionado][carta_jogador], 10)
		compara_carta_oponente = tp.cadeia_para_inteiro(cartas[atributo_selecionado][carta_oponente],10)
 
		se (compara_carta_jogador == compara_carta_oponente)
		{
			resultado = EMPATOU		
		}
		senao se (compara_carta_jogador > compara_carta_oponente)
		{
			resultado = GANHOU
		}
		senao
		{
			resultado = PERDEU
		}
	}

	funcao empate()
	{		
		i = 0
		enquanto (deck_empate[i] != 50)
		{
			i++
		}

		deck_empate[i] = carta_jogador
		deck_empate[i+1] = carta_oponente
		deck_jogador[0] = 50
		deck_oponente[0] = 50

		para (i = 0; i < 32; i++)
		{
			se (i == 0)
			{
				deck_jogador[qtde_cartas_jogador] = deck_jogador[i]
				deck_oponente[qtde_cartas_oponente] = deck_oponente[i]
			}				
			senao
			{
				deck_jogador[i-1] = deck_jogador[i]
				deck_oponente[i-1] = deck_oponente[i]
			}
		}
		contar_cartas()

	}

	funcao perder()
	{		
		j = 0
		enquanto (deck_empate[j] != 50)
		{
			deck_oponente[qtde_cartas_oponente] = deck_empate[j]
			j++
			contar_cartas()
		}

		deck_oponente[qtde_cartas_oponente] = carta_jogador
		deck_jogador[0] = 50
		contar_cartas()

		para (i = 0; i < 32; i++)
		{
			se (i == 0)
			{
				deck_jogador[qtde_cartas_jogador] = deck_jogador[i]
				deck_oponente[qtde_cartas_oponente] = deck_oponente[i]
			}				
			senao
			{
				deck_jogador[i-1] = deck_jogador[i]
				deck_oponente[i-1] = deck_oponente[i]
			}
		}

		para (i = 0; i < 32; i++)
		{
			deck_empate[i] = 50
		}

		contar_cartas()

		vez = OPONENTE
	}

	funcao ganhar()
	{
		j = 0
		enquanto (deck_empate[j] != 50)
		{
			deck_jogador[qtde_cartas_jogador] = deck_empate[j]
			j++
			contar_cartas()
		}
		
		deck_jogador[qtde_cartas_jogador] = carta_oponente
		deck_oponente[0] = 50
		contar_cartas()

		para (i = 0; i < 32; i++)
		{
			se (i == 0)
			{
				deck_jogador[qtde_cartas_jogador] = deck_jogador[i]
				deck_oponente[qtde_cartas_oponente] = deck_oponente[i]
			}				
			senao
			{
				deck_jogador[i-1] = deck_jogador[i]
				deck_oponente[i-1] = deck_oponente[i]
			}
		}
			
		para (i = 0; i < 32; i++)
		{
			deck_empate[i] = 50
		}

		vez = JOGADOR

		contar_cartas()	
	}

	funcao selecionar_atributo_oponente()
	{
		inteiro atributo_mais_forte = 0, atributo_mais_forte2 = 0, atributo = 0

		carta_oponente = deck_oponente[0]
		para (k = 0; k < 5; k++)
		{
			atributo = tp.cadeia_para_inteiro(cartas[k+1][carta_oponente], 10)
			seleciona_atributos_oponente[k] = atributo
			se (atributo_mais_forte < atributo)
			{
				atributo_mais_forte = atributo
				posicao_atributo_mais_forte = k+1
			}
		}

		para (k = 0; k < 5; k++)
		{
			se (seleciona_atributos_oponente[k] > atributo_mais_forte2 e seleciona_atributos_oponente[k] < atributo_mais_forte)
			{
				atributo_mais_forte2 = seleciona_atributos_oponente[k]
				posicao_atributo_mais_forte2 = k + 1
			}
		}
	}

	funcao exibir_menu()
	{
		desenhar_menu()
		g.renderizar()
		ler_tecla_menu()
	}

	funcao exibir_como_jogar()
	{
		desenhar_como_jogar()
		g.renderizar()
		ler_tecla_como_jogar()
	}

	funcao exibir_vez_jogador()
	{
		carta_jogador = deck_jogador[0]
		carta_oponente = deck_oponente[0]
		desenhar_jogo()
		desenhar_atributos_jogador()
		desenhar_sua_vez()
		g.renderizar()
		ler_tecla_vez_jogador()
	}

	funcao exibir_vez_oponente()
	{
		g.limpar()
		carta_jogador = deck_jogador[0]
		carta_oponente = deck_oponente[0]
		desenhar_jogo()
		desenhar_atributos_jogador()
		desenhar_atributo_selecionado()
		desenhar_vez_oponente()
		g.renderizar()
		ler_tecla_vez_oponente()
	}

	funcao exibir_confirmar_saida()
	{
		desenhar_confirmar_saida()
		g.renderizar()
		ler_tecla_confirmar_saida()
	}

	funcao exibir_resultado_rodada()
	{
		se (resultado == EMPATOU)
		{
			desenhar_jogo()
			desenhar_atributo_selecionado()
			desenhar_atributos_jogador()
			desenhar_carta_oponente()
			desenhar_atributos_oponente()
			desenhar_atributo_selecionado_oponente()
			desenhar_empatou_rodada()
			g.renderizar()
			empate()
		}
		senao se (resultado == GANHOU)
		{
			desenhar_jogo()
			desenhar_atributo_selecionado()
			desenhar_atributos_jogador()
			desenhar_carta_oponente()
			desenhar_atributos_oponente()
			desenhar_atributo_selecionado_oponente()
			desenhar_venceu_rodada()
			g.renderizar()
			ganhar()
		}
		senao se (resultado == PERDEU)
		{
			desenhar_jogo()
			desenhar_atributo_selecionado()
			desenhar_atributos_jogador()
			desenhar_carta_oponente()
			desenhar_atributos_oponente()
			desenhar_atributo_selecionado_oponente()
			desenhar_perdeu_rodada()
			g.renderizar()
			perder()
		}
		ler_tecla_resultado_rodada()
	}

	funcao exibir_fim_de_jogo()
	{
		se (vencedor == JOGADOR)
		{
			desenhar_venceu_jogo()
		}
		senao se (vencedor == OPONENTE)
		{
			desenhar_perdeu_jogo()
		}
		
		g.renderizar()
		ler_tecla_fim_de_jogo()
	}

	funcao ler_tecla_menu()
	{
		se (tela_atual == MENU)
		{
			enquanto (tela_atual == MENU)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_ENTER)
				{
					definir_decks()
					tela_atual = VEZ_JOGADOR
					tela_anterior = MENU
				}
				senao se (tecla_pressionada == t.TECLA_C)
				{
					tela_atual = COMO_JOGAR
					tela_anterior = MENU
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					tela_atual = CONFIRMAR_SAIDA
					tela_anterior = MENU
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_como_jogar()
	{
		se (tela_atual == COMO_JOGAR)
		{
			enquanto (tela_atual == COMO_JOGAR)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_ENTER)
				{
					tela_atual = MENU
					tela_anterior = COMO_JOGAR
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					tela_atual = CONFIRMAR_SAIDA
					tela_anterior = COMO_JOGAR
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_vez_jogador()
	{
		se (tela_atual == VEZ_JOGADOR)
		{
			enquanto (tela_atual == VEZ_JOGADOR)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_1)
				{
					atributo_selecionado = 1
					desenhar_atributo_selecionado()
					g.renderizar()
				}
				senao se (tecla_pressionada == t.TECLA_2)
				{
					atributo_selecionado = 2
					desenhar_atributo_selecionado()
					g.renderizar()
				}
				senao se (tecla_pressionada == t.TECLA_3)
				{
					atributo_selecionado = 3
					desenhar_atributo_selecionado()
					g.renderizar()
				}
				senao se (tecla_pressionada == t.TECLA_4)
				{
					atributo_selecionado = 4
					desenhar_atributo_selecionado()
					g.renderizar()
				}
				senao se (tecla_pressionada == t.TECLA_5)
				{
					atributo_selecionado = 5
					desenhar_atributo_selecionado()
					g.renderizar()
				}
				senao se ((tecla_pressionada == t.TECLA_ENTER) e (atributo_selecionado != -1))
				{
					tela_atual = RESULTADO_RODADA
					tela_anterior = VEZ_JOGADOR
					comparar_cartas()
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					tela_atual = CONFIRMAR_SAIDA
					tela_anterior = VEZ_JOGADOR
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_vez_oponente()
	{
		se (tela_atual == VEZ_OPONENTE)
		{
			enquanto (tela_atual == VEZ_OPONENTE)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_ENTER)
				{
					tela_atual = RESULTADO_RODADA
					tela_anterior = VEZ_OPONENTE
					comparar_cartas()
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					tela_atual = CONFIRMAR_SAIDA
					tela_anterior = VEZ_OPONENTE
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_confirmar_saida()
	{
		se (tela_atual == CONFIRMAR_SAIDA)
		{
			enquanto (tela_atual == CONFIRMAR_SAIDA)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_N)
				{
					tela_atual = tela_anterior
					tela_anterior = CONFIRMAR_SAIDA
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					g.fechar_janela()
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_resultado_rodada()
	{
		se (tela_atual == RESULTADO_RODADA)
		{
			enquanto (tela_atual == RESULTADO_RODADA)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_ENTER)
				{
					se (qtde_cartas_jogador == 0 ou qtde_cartas_oponente == 0)
					{
						se (qtde_cartas_jogador > qtde_cartas_oponente)
						{
							vencedor = JOGADOR
						}
						senao se (qtde_cartas_oponente > qtde_cartas_jogador)
						{
							vencedor = OPONENTE
						}

						tela_atual = FIM_DE_JOGO
						tela_anterior = RESULTADO_RODADA
					}
					senao
					{
						se (resultado == GANHOU)
						{
							atributo_selecionado = -1
							tela_atual = VEZ_JOGADOR
							tela_anterior = RESULTADO_RODADA
						}
						senao se (resultado == EMPATOU)
						{
							se (vez == JOGADOR)
							{
								tela_atual = VEZ_JOGADOR
								tela_anterior = RESULTADO_RODADA
							}
							senao se (vez == OPONENTE)
							{
								selecionar_atributo_oponente()
								atributo_oponente = u.sorteia(1,2)	
								se (atributo_oponente == 1)
								{
									atributo_selecionado = posicao_atributo_mais_forte		
								}
								senao
								{
									atributo_selecionado = posicao_atributo_mais_forte2
								}
								tela_atual = VEZ_OPONENTE
								tela_anterior = RESULTADO_RODADA
							}
						}
						senao se (resultado == PERDEU)
						{
								selecionar_atributo_oponente()
								atributo_oponente = u.sorteia(1,2)	
								se (atributo_oponente == 1)
								{
									atributo_selecionado = posicao_atributo_mais_forte		
								}
								senao
								{
									atributo_selecionado = posicao_atributo_mais_forte2
								}
							tela_atual = VEZ_OPONENTE
							tela_anterior = RESULTADO_RODADA
						}
					}
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					tela_atual = CONFIRMAR_SAIDA
					tela_anterior = RESULTADO_RODADA
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao ler_tecla_fim_de_jogo()
	{
		se (tela_atual == FIM_DE_JOGO)
		{
			enquanto (tela_atual == FIM_DE_JOGO)
			{
				tecla_pressionada = t.ler_tecla()
				se (tecla_pressionada == t.TECLA_ENTER)
				{
					definir_decks()
					tela_atual = VEZ_JOGADOR
					tela_anterior = FIM_DE_JOGO
				}
				senao se (tecla_pressionada == t.TECLA_M)
				{
					tela_atual = MENU
					tela_anterior = FIM_DE_JOGO
				}
				senao se (tecla_pressionada == t.TECLA_ESC)
				{
					g.fechar_janela()
				}
				senao
				{
					tecla_pressionada = 0
				}
			}
		}
	}

	funcao desenhar_menu()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-menu.jpg")
		g.desenhar_imagem(0, 0, fundo)		
	}

	funcao desenhar_como_jogar()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-como-jogar.jpg")
		g.desenhar_imagem(0, 0, fundo)
	}

	funcao desenhar_jogo()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-tela-jogo.jpg")
		g.desenhar_imagem(0, 0, fundo)
		desenhar_carta_jogador()
		desenhar_qtde_cartas()
	}

	funcao desenhar_carta_jogador()
	{
		g.liberar_imagem(carta)
		carta = g.carregar_imagem(cartas[0][carta_jogador])
		g.desenhar_imagem(30, 71, carta)
	}

	funcao desenhar_carta_oponente()
	{
		g.liberar_imagem(carta)
		carta = g.carregar_imagem(cartas[0][carta_oponente])
		g.desenhar_imagem(481, 71, carta)
	}

	funcao desenhar_atributos_jogador()
	{
		g.definir_cor(g.COR_PRETO)
		g.definir_fonte_texto("Bauhaus 93")
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(260, 338, cartas[1][deck_jogador[0]])
		g.desenhar_texto(260, 371, cartas[2][deck_jogador[0]])
		g.desenhar_texto(260, 405, cartas[3][deck_jogador[0]])
		g.desenhar_texto(260, 438, cartas[4][deck_jogador[0]])
		g.desenhar_texto(260, 471, cartas[5][deck_jogador[0]])
	}

	funcao desenhar_atributos_oponente()
	{
		g.definir_cor(g.COR_PRETO)
		g.definir_fonte_texto("Bauhaus 93")
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(710, 338, cartas[1][deck_oponente[0]])
		g.desenhar_texto(710, 371, cartas[2][deck_oponente[0]])
		g.desenhar_texto(710, 405, cartas[3][deck_oponente[0]])
		g.desenhar_texto(710, 438, cartas[4][deck_oponente[0]])
		g.desenhar_texto(710, 471, cartas[5][deck_oponente[0]])
	}

	funcao desenhar_qtde_cartas()
	{
		contar_cartas()
		cadeia cartas_jogador, cartas_oponente, cartas_empate
		cartas_jogador = tp.inteiro_para_cadeia(qtde_cartas_jogador, 10)
		cartas_oponente = tp.inteiro_para_cadeia(qtde_cartas_oponente, 10)
		cartas_empate = tp.inteiro_para_cadeia(qtde_cartas_empate, 10)
		g.definir_cor(g.COR_PRETO)
		g.definir_fonte_texto("Bauhaus 93")
		g.definir_tamanho_texto(35.0)
		g.desenhar_texto(260, 6, cartas_jogador)
		g.desenhar_texto(712, 6, cartas_oponente)
		g.desenhar_texto(383, 20, cartas_empate)
	}

	funcao desenhar_sua_vez()
	{
		g.liberar_imagem(sua_vez)
		sua_vez = g.carregar_imagem("images/sua-vez.png")
		g.desenhar_imagem(325, 90, sua_vez)

		g.liberar_imagem(barra_comandos)
		barra_comandos = g.carregar_imagem("images/barra-comandos-jogador.png")
		g.desenhar_imagem(30, 549, barra_comandos)
	}

	funcao desenhar_vez_oponente()
	{
		g.liberar_imagem(vez_oponente)
		vez_oponente = g.carregar_imagem("images/vez-oponente.png")
		g.desenhar_imagem(323, 90, vez_oponente)

		g.liberar_imagem(barra_comandos)
		barra_comandos = g.carregar_imagem("images/barra-comandos-oponente.png")
		g.desenhar_imagem(30, 549, barra_comandos)
	}

	funcao desenhar_atributo_selecionado()
	{
		g.liberar_imagem(selecao)
		se (atributo_selecionado == 1)
		{
			desenhar_jogo()
			selecao = g.carregar_imagem("images/atributo-1.png")
			g.desenhar_imagem(45, 349, selecao)
			desenhar_atributos_jogador()
			se (tela_atual == VEZ_JOGADOR)
			{
				desenhar_sua_vez()
			}
			senao se (tela_atual == VEZ_OPONENTE)
			{
				desenhar_vez_oponente()
			}
		}
		senao se (atributo_selecionado ==2)
		{
			desenhar_jogo()
			selecao = g.carregar_imagem("images/atributo-2.png")
			g.desenhar_imagem(45, 382, selecao)
			desenhar_atributos_jogador()
			se (tela_atual == VEZ_JOGADOR)
			{
				desenhar_sua_vez()
			}
			senao se (tela_atual == VEZ_OPONENTE)
			{
				desenhar_vez_oponente()
			}
		}
		senao se (atributo_selecionado == 3)
		{
			desenhar_jogo()
			selecao = g.carregar_imagem("images/atributo-3.png")
			g.desenhar_imagem(45, 415, selecao)
			desenhar_atributos_jogador()
			se (tela_atual == VEZ_JOGADOR)
			{
				desenhar_sua_vez()
			}
			senao se (tela_atual == VEZ_OPONENTE)
			{
				desenhar_vez_oponente()
			}
		}
		senao se (atributo_selecionado == 4)
		{
			desenhar_jogo()
			selecao = g.carregar_imagem("images/atributo-4.png")
			g.desenhar_imagem(45, 448, selecao)
			desenhar_atributos_jogador()
			se (tela_atual == VEZ_JOGADOR)
			{
				desenhar_sua_vez()
			}
			senao se (tela_atual == VEZ_OPONENTE)
			{
				desenhar_vez_oponente()
			}
		}
		senao se (atributo_selecionado == 5)
		{
			desenhar_jogo()
			selecao = g.carregar_imagem("images/atributo-5.png")
			g.desenhar_imagem(45, 481, selecao)
			desenhar_atributos_jogador()
			se (tela_atual == VEZ_JOGADOR)
			{
				desenhar_sua_vez()
			}
			senao se (tela_atual == VEZ_OPONENTE)
			{
				desenhar_vez_oponente()
			}
		}
	}

	funcao desenhar_atributo_selecionado_oponente()
	{
		g.liberar_imagem(selecao_oponente)
		se (atributo_selecionado == 1)
		{
			selecao_oponente = g.carregar_imagem("images/atributo-1.png")
			g.desenhar_imagem(496, 349, selecao)
			desenhar_atributos_oponente()
		}
		senao se (atributo_selecionado ==2)
		{
			selecao_oponente = g.carregar_imagem("images/atributo-2.png")
			g.desenhar_imagem(496, 382, selecao)
			desenhar_atributos_oponente()
		}
		senao se (atributo_selecionado == 3)
		{
			selecao_oponente = g.carregar_imagem("images/atributo-3.png")
			g.desenhar_imagem(496, 415, selecao)
			desenhar_atributos_oponente()
		}
		senao se (atributo_selecionado == 4)
		{
			selecao_oponente = g.carregar_imagem("images/atributo-4.png")
			g.desenhar_imagem(496, 448, selecao)
			desenhar_atributos_oponente()
		}
		senao se (atributo_selecionado == 5)
		{
			selecao_oponente = g.carregar_imagem("images/atributo-5.png")
			g.desenhar_imagem(496, 481, selecao)
			desenhar_atributos_oponente()
		}
	}

	funcao desenhar_confirmar_saida()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-confirmar-saida.jpg")
		g.desenhar_imagem(0, 0, fundo)
	}

	funcao desenhar_venceu_rodada()
	{
		g.liberar_imagem(imagem_resultado)
		imagem_resultado = g.carregar_imagem("images/venceu-rodada.png")
		g.desenhar_imagem(0, 63, imagem_resultado)
	}

	funcao desenhar_perdeu_rodada()
	{
		g.liberar_imagem(imagem_resultado)
		imagem_resultado = g.carregar_imagem("images/perdeu-rodada.png")
		g.desenhar_imagem(0, 63, imagem_resultado)
	}

	funcao desenhar_empatou_rodada()
	{
		g.liberar_imagem(imagem_resultado)
		imagem_resultado = g.carregar_imagem("images/empatou-rodada.png")
		g.desenhar_imagem(0, 63, imagem_resultado)
	}

	funcao desenhar_venceu_jogo()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-fim-de-jogo-venceu.jpg")
		g.desenhar_imagem(0, 0, fundo)
	}

	funcao desenhar_perdeu_jogo()
	{
		liberar_imagem_fundo()
		fundo = g.carregar_imagem("images/bg-fim-de-jogo-perdeu.jpg")
		g.desenhar_imagem(0, 0, fundo)
	}
	
	funcao inicio()
	{
		inicializar()
		enquanto (EXECUCAO == verdadeiro)
		{
			escolha(tela_atual)
			{
				caso MENU:
					exibir_menu()
					pare
				caso COMO_JOGAR:
					exibir_como_jogar()
					pare
				caso VEZ_JOGADOR:
					exibir_vez_jogador()
					pare
				caso VEZ_OPONENTE:
					exibir_vez_oponente()
					pare
				caso CONFIRMAR_SAIDA:
					exibir_confirmar_saida()
					pare
				caso RESULTADO_RODADA:
					exibir_resultado_rodada()
					pare
				caso FIM_DE_JOGO:
					exibir_fim_de_jogo()
					pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 16963; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */