programa
{
	
	funcao inicio()
	{	
		// ==================== VARIAVEIS
		cadeia nome = "", endereco = "", nomeendereco = "", bairro = "", cidade = "", respform = "", nomecurso = "", instituicao = "", atividade = "", nometrab = "", empresa = "", cidadetrab = "", tempo = ""
		caracter  vcurso = ' ', vtrabalho = ' ', confcurso = ' ', confalteracoes = ' ', confirmacao = ' '
		inteiro idade = 0, numero = 0, curso = 0, horario1 = 0, horario2 = 0, c_trab_curso = 0, alteracoes, resp = 0, opcao
		// ====================


		// ==================== BLOCO PERGUNTAS INICIAIS
		escreva("Olá, qual o seu nome? ")
		leia(nome)

		escreva("\nBeleza ", nome,", quantos anos você tem? " )
		leia(idade)

		escreva("\nPoderia fornecer os seguintes dados? ")
		escreva("\nRua ou Avenida? ")
		leia(endereco)
		escreva("Nome da ", endereco, ": ")
		leia(nomeendereco)
		escreva("N: ")
		leia(numero)
		escreva("Bairro: ")
		leia(bairro)
		escreva("Cidade: ")
		leia(cidade)
    enquanto (vtrabalho != 's' e vtrabalho != 'n'){
      escreva("\nVocê trabalha atualmente (s/n)? ")
      leia(vtrabalho)
    }
		enquanto (vcurso != 's' e vcurso != 'n'){
			escreva("\nE curso, está fazendo algum (s/n)? ")
			leia(vcurso)
		}
		se (vtrabalho == 's' e vcurso == 's'){
			c_trab_curso = 0
		} senao se (vtrabalho == 's' e vcurso == 'n'){
			c_trab_curso = 1
		} senao se (vtrabalho == 'n' e vcurso == 's'){
			c_trab_curso = 2
		} senao {
			c_trab_curso = 3
		}
		// ====================
		// ==================== BLOCO TRABALHO
    se (vtrabalho == 's'){
      opcao = 0
      enquanto (opcao < 1 ou opcao > 5){
        limpa()
        escreva("======== TRABALHO ========")
        escreva("\nO que você faz?")
        escreva("\n1. TI\n2. Engenharia\n3. Mecânica\n4. Administração\n5. Outro")
        escreva("\n==========================")
        escreva("\nEscolha uma opção: ")
        leia(opcao)
      }

      escolha (opcao){
        caso 1:
          nometrab = "TI"
          pare
        caso 2:
          nometrab = "Engenharia"
          pare
        caso 3:
          nometrab = "Mecânica"
          pare
        caso 4:
          nometrab = "Administração"
          pare
        caso 5:
          escreva("Qual seria a área? ")
          leia(nometrab)
          pare
      }
      escreva("\n", nome, ", e em qual empresa você trabalha? ")
      leia(empresa)
      escreva("Há quanto tempo? ")
      leia(tempo)
      escreva("Em qual cidade? ")
      leia(cidadetrab)
      escreva("\nEntão você trabalha na empresa ", empresa, " na cidade de ", cidade, " há ", tempo, ".\n")
    }
		// ====================

		//===================== BLOCO CURSO
		se (vcurso == 's'){
				limpa()
				escreva(nome, ", já que está em um curso, qual seria? ")
				escreva("\n============ CURSOS ===========")
				escreva("\n1. TI\n2. Administração\n3. Marketing\n4. Segurança do Trabalho\n5. Logística\n6. Outro")
				escreva("\n===============================")
				escreva("\nQual das opções te atende? ")
				leia(curso)

			  escolha (curso){
          caso 1:
            nomecurso = "TI"
            pare
          caso 2:
            nomecurso = "Administração"
            pare
          caso 3:
            nomecurso = "Marketing"
            pare
          caso 4:
            nomecurso = "Segurança do Trabalho"
            pare
          caso 5:
            nomecurso = "Logística"
            pare
          caso 6:
            escreva(nome, ", qual seria o curso em questão? ")
            leia(nomecurso)
            pare
			}

      escreva("\n", nome, ", em qual instituição você está cursando ", nomecurso, "? ")
      leia(instituicao)
      escreva("\nHorário de início? ")
      leia(horario1)
      escreva("\nHorário fim? ")
      leia(horario2)
      escreva("\nO que você faz no curso no momento? ")
      leia(atividade)
    }
		//=====================

		// ====================FIM DO PROGRAMA
		se (c_trab_curso == 0){
      limpa()
			enquanto (respform != "s" e respform != "n"){
			limpa()
			escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ". \nVocê trabalha na empresa ", empresa, ", a ", tempo, ", na cidade de ", cidadetrab, ". \nE atualmente você está cursando ", nomecurso, " na instituição ", instituicao, ", no horário de ", horario1, "h às ", horario2, "h, desempenhando no momento ", atividade, ". \nSeus dados estão certos (s/n)? ")
			leia(respform)
		  }

		se (respform == "s"){
			limpa()
			escreva("Ok, finalizamos por aqui ", nome, "!\n")
		} senao {
				enquanto (confalteracoes != 's'){
				alteracoes = 0
          enquanto (alteracoes < 1 ou alteracoes > 17){
            limpa()
            escreva("=========== ALTERAR ===========")
            escreva("\nEscolha a opção que deseja alterar\n")
            escreva("1. Nome\n2. Idade\n3. Rua/Avenida\n4. Nome da ", endereco, "\n5. Numero\n6. Bairro\n7. Cidade\n8. Nome do curso\n9. Instituição do curso\n10. Horário de início de curso\n11. Horário de fim de curso\n12. Atividade desmpenhada no curso\n13. Empresa onde trabalha\n14. Tempo que está na ", empresa, "\n15. Cidade onde trabalha\n16. Se trabalha\n17. Se faz curso")
            escreva("\n===============================")
            escreva("\nEscolha a opção: ")
            leia(alteracoes)
          }
          
          escolha (alteracoes){
            caso 1:
              escreva("O nome correto é: ")
              leia(nome)
              pare
            caso 2:
              escreva("A idade correta é: ")
              leia(idade)
              pare
            caso 3:
              escreva("Seria rua ou avenida: ")
              leia(endereco)
              pare
            caso 4:
              escreva("O nome correto da ", endereco, " é: ")
              leia(nomeendereco)
              pare
            caso 5:
              escreva("Número correto da ", nomeendereco, ": ")
              leia(numero)
              pare
            caso 6:
              escreva("o bairro correto é: ")
              leia(bairro)
            pare
            caso 7:
              escreva("A cidade correta é: ")
              leia(cidade)
              pare
            caso 8:
              escreva("E qual o nome correto do curso? ")
              leia(nomecurso)
              pare
            caso 9:
              escreva("Qual a instituição correta do curso? ")
              leia(instituicao)
              pare
            caso 10:
              escreva("Quando inicia o horário correto do curso? ")
              leia(horario1)
              pare
            caso 11:
              escreva("Quando finaliza o horário correto do curso? ")
              leia(horario2)
              pare
            caso 12:
              escreva("O que faz no curso? ")
              leia(atividade)
              pare
            caso 13:
              escreva("Empresa correta onde trabalha? ")
              leia(empresa)
              pare
            caso 14:
              escreva("Tempo correto que está na empresa ", empresa, ": ")
              leia(tempo)
              pare
            caso 15:
              escreva("A cidade correta onde trabalha é: ")
              leia(cidadetrab)
              pare
            caso 16:
              escreva("Você trabalha? ")
              leia(vtrabalho)
              pare
            caso 17:
              escreva("Você faz algum curso? ")
              leia(vcurso)
              pare
          }
          limpa()
          escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ". \nVocê trabalha na empresa ", empresa, ", a ", tempo, ", na cidade de ", cidadetrab, ". \nE atualmente você está cursando ", nomecurso, " na instituição ", instituicao, ", no horário de ", horario1, "h às ", horario2, "h, desempenhando no momento ", atividade, ".\n")
          escreva("\nTodas as alterações foram feitas (s/n)? ")
          leia(confalteracoes)
			}
		}
		} senao se (c_trab_curso == 1){
      limpa()
      enquanto (respform != "s" e respform != "n"){
			limpa()
			escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ". \nVocê trabalha na empresa ", empresa, ", a ", tempo, ", na cidade de ", cidadetrab, ".\nSeus dados estão certos (s/n)? ")
			leia(respform)
		  }

		se (respform == "s"){
			limpa()
			escreva("Ok, finalizamos por aqui ", nome, "!\n")
		} senao {
				enquanto (confalteracoes != 's'){
				alteracoes = 0
          enquanto (alteracoes < 1 ou alteracoes > 12){
            limpa()
            escreva("=========== ALTERAR ===========")
            escreva("\nEscolha a opção que deseja alterar\n")
            escreva("1. Nome\n2. Idade\n3. Rua/Avenida\n4. Nome da ", endereco, "\n5. Numero\n6. Bairro\n7. Cidade\n8. Empresa onde trabalha\n9. Tempo que está na ", empresa, "\n10. Cidade onde trabalha\n11. Se trabalha\n12. Se faz curso")
            escreva("\n===============================")
            escreva("\nEscolha a opção: ")
            leia(alteracoes)
          }
          
          escolha (alteracoes){
            caso 1:
              escreva("O nome correto é: ")
              leia(nome)
              pare
            caso 2:
              escreva("A idade correta é: ")
              leia(idade)
              pare
            caso 3:
              escreva("Seria rua ou avenida: ")
              leia(endereco)
              pare
            caso 4:
              escreva("O nome correto da ", endereco, " é: ")
              leia(nomeendereco)
              pare
            caso 5:
              escreva("Número correto da ", nomeendereco, ": ")
              leia(numero)
              pare
            caso 6:
              escreva("o bairro correto é: ")
              leia(bairro)
            pare
            caso 7:
              escreva("A cidade correta é: ")
              leia(cidade)
              pare
            caso 8:
              escreva("Empresa correta onde trabalha? ")
              leia(empresa)
              pare
            caso 9:
              escreva("Tempo correto que está na empresa ", empresa, ": ")
              leia(tempo)
              pare
            caso 10:
              escreva("A cidade correta onde trabalha é: ")
              leia(cidadetrab)
              pare
            caso 11:
              escreva("Você trabalha? ")
              leia(vtrabalho)
              pare
            caso 12:
              escreva("Você faz algum curso? ")
              leia(vcurso)
              pare
          }
          limpa()
          escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ". \nVocê trabalha na empresa ", empresa, ", a ", tempo, ", na cidade de ", cidadetrab, ".\n")
          escreva("\nTodas as alterações foram feitas (s/n)? ")
          leia(confalteracoes)
			}
    }
		} senao se (c_trab_curso == 2){
      limpa()
			escreva("Faço curso mas não trabalho")
      enquanto (respform != "s" e respform != "n"){
			limpa()
			escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ".\nE atualmente você está cursando ", nomecurso, " na instituição ", instituicao, ", no horário de ", horario1, "h às ", horario2, "h, desempenhando no momento ", atividade, ".\nSeus dados estão corretos (s/n)? ")
			leia(respform)
		  }

		se (respform == "s"){
			limpa()
			escreva("Ok, finalizamos por aqui ", nome, "!\n")
		} senao {
				enquanto (confalteracoes != 's'){
				alteracoes = 0
          enquanto (alteracoes < 1 ou alteracoes > 14){
            limpa()
            escreva("=========== ALTERAR ===========")
            escreva("\nEscolha a opção que deseja alterar\n")
            escreva("1. Nome\n2. Idade\n3. Rua/Avenida\n4. Nome da ", endereco, "\n5. Numero\n6. Bairro\n7. Cidade\n8. Nome do curso\n9. Instituição do curso\n10. Horário de início de curso\n11. Horário de fim de curso\n12. Atividade desmpenhada no curso\n13. Se trabalha\n14. Se faz curso")
            escreva("\n===============================")
            escreva("\nEscolha a opção: ")
            leia(alteracoes)
          }
          
          escolha (alteracoes){
            caso 1:
              escreva("O nome correto é: ")
              leia(nome)
              pare
            caso 2:
              escreva("A idade correta é: ")
              leia(idade)
              pare
            caso 3:
              escreva("Seria rua ou avenida: ")
              leia(endereco)
              pare
            caso 4:
              escreva("O nome correto da ", endereco, " é: ")
              leia(nomeendereco)
              pare
            caso 5:
              escreva("Número correto da ", nomeendereco, ": ")
              leia(numero)
              pare
            caso 6:
              escreva("o bairro correto é: ")
              leia(bairro)
            pare
            caso 7:
              escreva("A cidade correta é: ")
              leia(cidade)
              pare
            caso 8:
              escreva("E qual o nome correto do curso? ")
              leia(nomecurso)
              pare
            caso 9:
              escreva("Qual a instituição correta do curso? ")
              leia(instituicao)
              pare
            caso 10:
              escreva("Quando inicia o horário correto do curso? ")
              leia(horario1)
              pare
            caso 11:
              escreva("Quando finaliza o horário correto do curso? ")
              leia(horario2)
              pare
            caso 12:
              escreva("O que faz no curso? ")
              leia(atividade)
              pare
            caso 13:
              escreva("Você trabalha? ")
              leia(vtrabalho)
              pare
            caso 14:
              escreva("Você faz algum curso? ")
              leia(vcurso)
              pare
          }
          limpa()
          escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ".\nE atualmente você está cursando ", nomecurso, " na instituição ", instituicao, ", no horário de ", horario1, "h às ", horario2, "h, desempenhando no momento ", atividade, ".\n")
          escreva("\nTodas as alterações foram feitas (s/n)? ")
          leia(confalteracoes)
			}
		}
		} senao {
      limpa()
			escreva("Não trabalho e nem faço curso")
      enquanto (respform != "s" e respform != "n"){
			limpa()
			escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ".\nSeus dados estão certos (s/n)? ")
			leia(respform)
		  }

		se (respform == "s"){
			limpa()
			escreva("Ok, finalizamos por aqui ", nome, "!\n")
		} senao {
				enquanto (confalteracoes != 's'){
				alteracoes = 0
          enquanto (alteracoes < 1 ou alteracoes > 9){
            limpa()
            escreva("=========== ALTERAR ===========")
            escreva("\nEscolha a opção que deseja alterar\n")
            escreva("1. Nome\n2. Idade\n3. Rua/Avenida\n4. Nome da ", endereco, "\n5. Numero\n6. Bairro\n7. Cidade")
            escreva("\n===============================")
            escreva("\nEscolha a opção: ")
            leia(alteracoes)
          }
          
          escolha (alteracoes){
            caso 1:
              escreva("O nome correto é: ")
              leia(nome)
              pare
            caso 2:
              escreva("A idade correta é: ")
              leia(idade)
              pare
            caso 3:
              escreva("Seria rua ou avenida: ")
              leia(endereco)
              pare
            caso 4:
              escreva("O nome correto da ", endereco, " é: ")
              leia(nomeendereco)
              pare
            caso 5:
              escreva("Número correto da ", nomeendereco, ": ")
              leia(numero)
              pare
            caso 6:
              escreva("o bairro correto é: ")
              leia(bairro)
            pare
            caso 7:
              escreva("A cidade correta é: ")
              leia(cidade)
              pare
            caso 8:
              escreva("Você trabalha? ")
              leia(vtrabalho)
              pare
            caso 9:
              escreva("Você faz algum curso? ")
              leia(vcurso)
              pare
          }
          limpa()
          escreva(nome, ", então você tem ", idade, " anos, mora no endereço: ",endereco," ", nomeendereco,", ", numero,", ", bairro, ", ", cidade, ".\n")
          escreva("\nTodas as alterações foram feitas (s/n)? ")
          leia(confalteracoes)
			}
		}
		}

		// ================= FINALIZAÇÃO
    limpa()
		escreva("\nOk, muito obrigado!")
		escreva("\n")
		//==================
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3191; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */