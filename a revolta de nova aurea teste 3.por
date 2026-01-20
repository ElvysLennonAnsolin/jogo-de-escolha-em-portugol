programa
{ 
    // Bloco principal do programa (ponto de entrada do cﾃｳdigo)
    
    // =========== INCLUSﾃグ DE BIBLIOTECAS ===========
    inclua biblioteca Objetos --> obj            // importa utilitﾃ｡rios para criar/manipular objetos (cenas)
    inclua biblioteca Arquivos --> arq           // importa funﾃｧﾃｵes para ler/escrever arquivos
    inclua biblioteca Texto --> txt             // importa utilidades de manipulaﾃｧﾃ｣o de strings/texto
    inclua biblioteca Util --> util             // importa utilitﾃ｡rios gerais (sorteio, aguardar, etc.)
    inclua biblioteca Tipos --> t                // converte tipos, utilitﾃ｡rios de tipo
    inclua biblioteca Graficos --> g            // funﾃｧﾃｵes grﾃ｡ficas (desenhar, imagens, cores)
    inclua biblioteca Teclado --> tec           // funﾃｧﾃｵes de teclado (detectar teclas)
    
    // =========== DECLARAﾃ�ﾃグ DE TODAS AS CENAS ===========
    inteiro cena_introducao = obj.criar_objeto()              // cria objeto que representa a cena de introduﾃｧﾃ｣o
    inteiro cena_inicio = obj.criar_objeto()              // cria objeto que representa a cena de introduﾃｧﾃ｣o
    inteiro cena_acao_direta = obj.criar_objeto()             // cria cena rota aﾃｧﾃ｣o direta
    inteiro cena_acao_furtiva = obj.criar_objeto()            // cria cena rota furtiva
    inteiro cena_aux_jack = obj.criar_objeto()                // cria cena auxiliar Jack
    inteiro cena_seguir_sozinho = obj.criar_objeto()          // cria cena seguir sozinho

    // ============= ROTA FURTIVA =============
    inteiro cena_invasao_a_torre1 = obj.criar_objeto()        // cena inﾃｭcio invasﾃ｣o furtiva (3 opﾃｧﾃｵes)
    inteiro cena_escada_furtiva = obj.criar_objeto()          // cena escada furtiva
    inteiro cena_elevador_furtiva = obj.criar_objeto()        // cena elevador furtiva
    inteiro cena_sabotagem_furtiva = obj.criar_objeto()       // cena sabotagem furtiva

    // ESCADARIA ROTA FURTIVA
    inteiro cena_escadaria_de_emergencia1 = obj.criar_objeto() // cena escadaria emergﾃｪncia
    inteiro cena_hack_profundo_3_ou_mais1 = obj.criar_objeto() // cena sucesso hack (>=3)
    inteiro cena_hack_profundo_2_ou_menos1 = obj.criar_objeto() // cena falha hack (<=2)
    inteiro cena_criar_distracao1 = obj.criar_objeto()         // cena criar distraﾃｧﾃ｣o
    inteiro cena_distracao_falha1 = obj.criar_objeto()         // cena distraﾃｧﾃ｣o falha

    // ELEVADOR ROTA FURTIVA
    inteiro cena_elevador1 = obj.criar_objeto()                // cena elevador (encontro faxineiro)
    inteiro cena_encontro_faxineiro = obj.criar_objeto()       // cena encontro com faxineiro
    inteiro cena_faxineiro_persuasao = obj.criar_objeto ()     // persuasﾃ｣o faxineiro
    inteiro cena_faxineiro_neutralizar = obj.criar_objeto()    // neutralizar faxineiro

    // SABOTAGEM ROTA FURTIVA
    inteiro cena_sabotagem1 = obj.criar_objeto()               // cena sabotagem
    inteiro cena_armadilha1 = obj.criar_objeto()               // cena armar armadilha
    inteiro cena_deixar_passar1 = obj.criar_objeto()           // cena deixar passar
    inteiro cena_encontro_tecnico1 = obj.criar_objeto()        // encontro tﾃｩcnico (persuadir/neutralizar)
    inteiro cena_encontro_persuasao = obj.criar_objeto()       // persuasﾃ｣o tﾃｩcnico
    inteiro cena_encontro_neutralizar = obj.criar_objeto()     // neutralizar tﾃｩcnico

    // SALA DE CONTROLE ROTA FURTIVA
    inteiro cena_corredor_sala_controle1 = obj.criar_objeto() // cena corredor sala de controle
    inteiro cena_chegada_ao_andar_escadaria1 = obj.criar_objeto() // chegada pela escadaria
    inteiro cena_chegada_ao_andar_escadaria11 = obj.criar_objeto() // chegada pela escadaria
    inteiro cena_chegada_ao_andar_bacup_desativado1 = obj.criar_objeto() // chegada por sabotagem
    inteiro cena_ataque_coordenado1 = obj.criar_objeto()       // ataque coordenado
    inteiro cena_distracao1 = obj.criar_objeto()               // distraﾃｧﾃ｣o sala controle
    inteiro cena_defender_a_sala1 = obj.criar_objeto()         // defender a sala (furtiva)
    inteiro cena_sala_de_controle = obj.criar_objeto()			//escolhas na sala de controle 

    // SISTEMAS DE DESATIVAﾃ�ﾃグ FURTIVA
    inteiro cena_desativacao1 = obj.criar_objeto()             // cena desativaﾃｧﾃ｣o sistema
    inteiro cena_nucleo1 = obj.criar_objeto()                  // cena nﾃｺcleo do sistema
    inteiro cena_nucleo1_5_mais = obj.criar_objeto()           // nﾃｺcleo com dado >=5
    inteiro cena_nucleo1_4_menos = obj.criar_objeto()          // nﾃｺcleo com dado <=4
    inteiro cena_rastreamento1 = obj.criar_objeto()            // cena rastreamento
    inteiro cena_rastreamento1_4_mais = obj.criar_objeto()     // rastreamento dado >=4
    inteiro cena_rastreamento1_3_menos = obj.criar_objeto()    // rastreamento dado <=3

    // CENA DESATIVAR BACKUP 
    inteiro cena_desativar_backup1 = obj.criar_objeto()  // cena desativar backup
    inteiro cena_sala_de_controle2 = obj.criar_objeto()   // cena sala de controle após um combate

    // ============ ROTA Aﾃ�ﾃグ DIRETA ============
    inteiro cena_invasao_a_torre2 = obj.criar_objeto()         // invasﾃ｣o aﾃｧﾃ｣o direta (combate na entrada)
    inteiro cena_que_vitoria = obj.criar_objeto()			   // apﾃｳs combate entrada (3 opﾃｧﾃｵes)
    inteiro cena_apos_combate_entrada = obj.criar_objeto()     // apﾃｳs combate entrada (3 opﾃｧﾃｵes)
    inteiro cena_escada_direta = obj.criar_objeto()            // escada aﾃｧﾃ｣o direta
    inteiro cena_elevador_direta = obj.criar_objeto()          // elevador aﾃｧﾃ｣o direta
    inteiro cena_sabotagem_direta = obj.criar_objeto()         // sabotagem aﾃｧﾃ｣o direta

    // ESCADARIA ROTA Aﾃ�ﾃグ DIRETA
    inteiro cena_escadaria2 = obj.criar_objeto()               // escadaria aﾃｧﾃ｣o direta
    inteiro cena_encontro_tecnico2 = obj.criar_objeto()        // encontro tﾃｩcnico aﾃｧﾃ｣o direta
    inteiro cena_tecnico_persuasao2 = obj.criar_objeto()       // persuasﾃ｣o tﾃｩcnico direta
    inteiro cena_tecnico_neutralizar2 = obj.criar_objeto()     // neutralizar tﾃｩcnico direto

    // ELEVADOR ROTA Aﾃ�ﾃグ DIRETA
    inteiro cena_elevador2 = obj.criar_objeto()                // elevador aﾃｧﾃ｣o direta
    inteiro cena_encontro_faxineiro2 = obj.criar_objeto()     // encontro com faxineiro interludio
    inteiro cena_faxineiro_persuacao2 = obj.criar_objeto()      // encontro com faxineiro interludio
    inteiro cena_faxineiro_neutralizar2 = obj.criar_objeto()	// neutraizando os tecnicos

    // SABOTAGEM Aﾃ�ﾃグ DIRETA
    inteiro cena_sabotagem2 = obj.criar_objeto()               // sabotagem aﾃｧﾃ｣o direta
    inteiro cena_sabotagem2_energia = obj.criar_objeto()       // sabotagem energia

    // CHEGADA A SALA DE CONTROLE Aﾃ�ﾃグ DIRETA
    inteiro cena_chegada_ao_andar_escadaria2 = obj.criar_objeto() // chegada escadaria direta
    inteiro cena_chegada_ao_andar_elevador2 = obj.criar_objeto()  // chegada elevador direta
    inteiro cena_chegada_ao_andar_sabotagem2 = obj.criar_objeto() // chegada sabotagem direta
    inteiro cena_defender_sala2 = obj.criar_objeto()           // defender sala aﾃｧﾃ｣o direta
    

    // SISTEMAS DE COMBATE
    inteiro cena_combate_contra2 = obj.criar_objeto()          // combate contra 2 guardas
    inteiro cena_combate_contra3 = obj.criar_objeto()          // combate contra 3 guardas
    inteiro cena_combate_contra4 = obj.criar_objeto()          // combate contra 4 guardas
    inteiro cena_combate_contra5 = obj.criar_objeto()          // combate contra 5 guardas

    inteiro cena_fim_de_jogo1 = obj.criar_objeto()             // cena fim jogo (derrota)
    inteiro cena_o_final = obj.criar_objeto()

    // ============= VARIﾃ〃EIS GLOBAIS =============
    inteiro cena_atual = -1                                    // guarda qual cena estﾃ｡ ativa
    logico jogador_rola_dado = falso                            // se jogador quer rolar dados manualmente
    inteiro vida_kael = 10                                     // vida do personagem Kael
    inteiro curas_restantes = 10                               // nﾃｺmero de curas disponﾃｭveis
    cadeia entrada = " "                                        // variﾃ｡vel para entrada de texto (se usada)
    
    // ============= VARIﾃ〃EIS GRAFICAS =============
    inteiro largura_janela = 1024                              // largura da janela grﾃ｡fica padrﾃ｣o
    inteiro altura_janela = 1024                               // altura da janela grﾃ｡fica padrﾃ｣o
    
    // Cores
        // Cores
    inteiro vidro = 0
    inteiro cor_branco = g.criar_cor(255, 255, 255)
    inteiro cor_preto = g.criar_cor(0, 0, 0)
    inteiro cor_cinza_escuro = g.criar_cor(40, 40, 40)
    inteiro cor_verde = g.criar_cor(0, 255, 0)
    inteiro cor_amarelo = g.criar_cor(255, 255, 0)
    inteiro cor_vermelho = g.criar_cor(255, 0, 0)
    inteiro cor_azul = g.criar_cor(0, 100, 255)
    inteiro cor_transparente = g.criar_cor(0, 0, 180)
    
    // Cores para caixas de vidro (serão criadas dinamicamente com transparência)
    funcao inicio()
    {
        inicializar_sistema_grafico()                          // configura sistema grﾃ｡fico (janela, modo)
        criar_todas_as_cenas()                                 // popula propriedades das cenas
        perguntar_sistema_dados()                              // pergunta ao jogador preferﾃｪncias (dados)
        exibir_cena_grafica(cena_introducao)                   // exibe cena inicial
        processar_escolhas_graficas()                          // entra no loop que processa teclas/escolhas
    }

    // ============= SISTEMA GRAFICO =============
    funcao vazio inicializar_sistema_grafico()
    {
        g.iniciar_modo_grafico(verdadeiro)                    // inicia modo grﾃ｡fico (true = fullscreen/opcional)
        g.definir_dimensoes_janela(largura_janela, altura_janela)  // define tamanho da janela
        g.definir_titulo_janela("A Revolta de Nova Aúrea")     // define tﾃｭtulo da janela
        
        // Fontes serﾃ｣o definidas dinamicamente antes de desenhar texto
    }

    funcao inteiro rolar_dado()
    {
        se (jogador_rola_dado) {                              // se jogador escolheu rolar manual
            retorne pedir_valor_dado_grafico()               // chama funﾃｧﾃ｣o para input manual e retorna valor
        } senao {
            inteiro dado = util.sorteia(1, 6)                // sorteia valor aleatﾃｳrio 1-6
            exibir_resultado_dado_grafico(dado, falso)       // mostra resultado graficamente (nﾃ｣o manual)
            util.aguarde(1500)                               // espera 1.5s para o jogador ver
            retorne dado                                     // retorna o valor sorteado
        }
    }

    funcao inteiro pedir_valor_dado_grafico()
{
    inteiro valor_dado = 0
    logico entrada_valida = falso
    
    inteiro imagem_fundo = g.carregar_imagem("imagem/combate.png")
    se (imagem_fundo != -1) {
        g.desenhar_imagem(0, 0, imagem_fundo)
        g.liberar_imagem(imagem_fundo)
    } senao {
        g.definir_cor(cor_preto)
        g.limpar()
    }
    
    faca {
        // Caixa de vidro para o menu de dados
        inteiro cor_vidro_menu = g.criar_cor(40, 40, 60)
        inteiro cor_vidro_claro = g.criar_cor(60, 60, 80)
        inteiro cor_borda_menu = g.criar_cor(200, 200, 220)
        
        g.definir_cor(cor_vidro_menu)
        g.desenhar_retangulo(250, 180, 500, 280, falso, verdadeiro)
        
        g.definir_cor(cor_vidro_claro)
        g.desenhar_retangulo(250, 180, 500, 50, falso, verdadeiro)
        
        g.definir_cor(cor_borda_menu)
        g.desenhar_retangulo(250, 180, 500, 280, verdadeiro, falso)
        
        g.definir_cor(cor_branco)
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(24.0)
        g.definir_estilo_texto(falso, verdadeiro, falso)
        g.desenhar_texto(350, 200, "ROLAR DADO")
        
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(16.0)
        g.definir_estilo_texto(falso, falso, falso)
        g.desenhar_texto(300, 260, "Digite um valor entre 1 e 6:")
        
        se (valor_dado > 0) {
            g.definir_cor(cor_amarelo)
            g.definir_fonte_texto("Arial")
            g.definir_tamanho_texto(36.0)
            g.definir_estilo_texto(falso, verdadeiro, falso)
            g.desenhar_texto(470, 300, t.inteiro_para_cadeia(valor_dado, 10))
        }
        
        g.definir_cor(cor_branco)
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(16.0)
        g.definir_estilo_texto(falso, falso, falso)
        g.desenhar_texto(300, 350, "Pressione 1-6 para escolher")
        g.desenhar_texto(300, 380, "ENTER para confirmar")
        
        g.renderizar()
        
        // Detecta teclas 1..6
        se (tec.tecla_pressionada(tec.TECLA_1)) { valor_dado = 1 } 
        senao se (tec.tecla_pressionada(tec.TECLA_2)) { valor_dado = 2} 
        senao se (tec.tecla_pressionada(tec.TECLA_3)) { valor_dado = 3} 
        senao se (tec.tecla_pressionada(tec.TECLA_4)) { valor_dado = 4 }
        senao se (tec.tecla_pressionada(tec.TECLA_5)) { valor_dado = 5 }
        senao se (tec.tecla_pressionada(tec.TECLA_6)) { valor_dado = 6 }
        senao se (tec.tecla_pressionada(tec.TECLA_ENTER)) { 
            se (valor_dado >= 1 e valor_dado <= 6) {
                entrada_valida = verdadeiro
                util.aguarde(300)
            }
        }
        
        util.aguarde(50)
    } enquanto (nao entrada_valida)
    
    exibir_resultado_dado_grafico(valor_dado, verdadeiro)
    retorne valor_dado
}

    funcao vazio exibir_resultado_dado_grafico(inteiro valor, logico escolha_manual)
    
{
    inteiro imagem_fundo = g.carregar_imagem("imagem/combate.png")
    se (imagem_fundo != -1) {
        g.desenhar_imagem(0, 0, imagem_fundo)
        g.liberar_imagem(imagem_fundo)
    } senao {
        g.definir_cor(cor_preto)
        g.limpar()
    }
    
    // Caixa de vidro para resultado
    inteiro cor_vidro_resultado = g.criar_cor(40, 40, 60)
    inteiro cor_vidro_claro_resultado = g.criar_cor(60, 60, 80)
    inteiro cor_borda_resultado = g.criar_cor(200, 200, 220)
    
    g.definir_cor(cor_vidro_resultado)
    g.desenhar_retangulo(250, 180, 500, 280, falso, verdadeiro)
    
    g.definir_cor(cor_vidro_claro_resultado)
    g.desenhar_retangulo(250, 180, 500, 50, falso, verdadeiro)
    
    g.definir_cor(cor_borda_resultado)
    g.desenhar_retangulo(250, 180, 500, 280, verdadeiro, falso)
    
    g.definir_cor(cor_branco)
    g.definir_fonte_texto("Arial") 
    g.definir_tamanho_texto(24.0) 
    g.definir_estilo_texto(falso, verdadeiro, falso)
    g.desenhar_texto(350, 200, "RESULTADO DO DADO")
    
    // Desenhar dado visual
    g.definir_cor(cor_branco)
    g.desenhar_retangulo(450, 270, 80, 80, falso, falso)
    
    // Valor do dado grande
    g.definir_cor(cor_amarelo)
    g.definir_tamanho_texto(48.0)
    g.desenhar_texto(470, 290, t.inteiro_para_cadeia(valor, 10))
    
    g.definir_cor(cor_branco)
    g.definir_fonte_texto("Arial")
    g.definir_tamanho_texto(16.0)
    g.definir_estilo_texto(falso, falso, falso)
    
    se (escolha_manual) {
        g.desenhar_texto(300, 380, "Você escolheu: " + t.inteiro_para_cadeia(valor, 10))
    } senao {
        g.desenhar_texto(300, 380, "Dado rolado: " + t.inteiro_para_cadeia(valor, 10))
    }
    
    g.desenhar_texto(300, 410, "Pressione ENTER para continuar")
    g.renderizar()
    
    faca {
        util.aguarde(50)
    } enquanto (nao tec.tecla_pressionada(tec.TECLA_ENTER))
}


funcao vazio exibir_cena_grafica(inteiro cena)
{
    cena_atual = cena

    cadeia arquivo_texto = "texto/padrao.txt"
    cadeia arquivo_imagem = "imagem/primeira imagem menu.jpg"

    inteiro escolha1 = -1, escolha2 = -1, escolha3 = -1
    cadeia texto_escolha1 = "", texto_escolha2 = "", texto_escolha3 = ""

    se (obj.contem_propriedade(cena, "arquivo")) {
        arquivo_texto = obj.obter_propriedade_tipo_cadeia(cena, "arquivo")
    }
    se (obj.contem_propriedade(cena, "imagem")) {
        arquivo_imagem = obj.obter_propriedade_tipo_cadeia(cena, "imagem")
    }
    se (obj.contem_propriedade(cena, "escolha1")) {
        escolha1 = obj.obter_propriedade_tipo_inteiro(cena, "escolha1")
    }
    se (obj.contem_propriedade(cena, "escolha2")) {
        escolha2 = obj.obter_propriedade_tipo_inteiro(cena, "escolha2")
    }
    se (obj.contem_propriedade(cena, "escolha3")) {
        escolha3 = obj.obter_propriedade_tipo_inteiro(cena, "escolha3")
    }
    se (obj.contem_propriedade(cena, "texto_escolha1")) {
        texto_escolha1 = obj.obter_propriedade_tipo_cadeia(cena, "texto_escolha1")
    }
    se (obj.contem_propriedade(cena, "texto_escolha2")) {
        texto_escolha2 = obj.obter_propriedade_tipo_cadeia(cena, "texto_escolha2")
    }
    se (obj.contem_propriedade(cena, "texto_escolha3")) {
        texto_escolha3 = obj.obter_propriedade_tipo_cadeia(cena, "texto_escolha3")
    }

    // 1. PRIMEIRO: Desenhar APENAS a imagem de fundo
    inteiro imagem_fundo = g.carregar_imagem(arquivo_imagem)
    
    se (imagem_fundo != -1) {
        g.desenhar_imagem(0, 0, imagem_fundo)
        g.renderizar()  // Renderiza SÓ a imagem
    } senao {
        g.definir_cor(cor_preto)
        g.limpar()
        g.renderizar()
    }
    
    // 2. DELAY para mostrar a imagem
    util.aguarde(1500)  // 1.5 segundos para ver a imagem antes dos textos
    
    // 3. AGORA desenhar o resto (sobre a imagem)
    // Se a imagem foi liberada, precisamos carregar de novo
    se (imagem_fundo != -1) {
        g.liberar_imagem(imagem_fundo)  // Libera a primeira instância
        imagem_fundo = g.carregar_imagem(arquivo_imagem)  // Carrega de novo
        se (imagem_fundo != -1) {
            g.desenhar_imagem(0, 0, imagem_fundo)
        }
    }

    // Ler o conteúdo do arquivo
    cadeia conteudo = ler_arquivo_texto(arquivo_texto)
    
    // ============ CÁLCULO DA ALTURA DO TEXTO ============
    g.definir_fonte_texto("Arial")
    g.definir_tamanho_texto(20.0)
    
    inteiro largura_disponivel = largura_janela - 140
    
    // Contar linhas
    inteiro linhas = 0
    cadeia linha_atual = ""
    cadeia palavra_atual = ""
    inteiro n = txt.numero_caracteres(conteudo)
    
    para (inteiro i = 0; i < n; i++) {
        caracter c = txt.obter_caracter(conteudo, i)
        
        se (c == '\n') {
            linhas = linhas + 1
            linha_atual = ""
            palavra_atual = ""
        }
        senao se (c == ' ') {
            cadeia teste = linha_atual + palavra_atual
            
            se (g.largura_texto(teste + " ") <= largura_disponivel) {
                linha_atual = teste + " "
            } senao {
                linhas = linhas + 1
                linha_atual = palavra_atual + " "
            }
            palavra_atual = ""
        }
        senao {
            palavra_atual = palavra_atual + t.caracter_para_cadeia(c)
        }
    }
    
    // Última linha
    se (palavra_atual != "") {
        cadeia teste = linha_atual + palavra_atual
        se (g.largura_texto(teste) <= largura_disponivel) {
            linhas = linhas + 1
        } senao {
            linhas = linhas + 1
            se (linha_atual != "") {
                linhas = linhas + 1
            }
        }
    }
    senao se (linha_atual != "") {
        linhas = linhas + 1
    }
    
    // Calcular altura
    inteiro altura_necessaria = (linhas * 22) + 40
    
    se (altura_necessaria < 120) {
        altura_necessaria = 120
    }
    
    inteiro altura_maxima = 550
    se (altura_necessaria > altura_maxima) {
        altura_necessaria = altura_maxima
    }

    // =========== CAIXA DE TEXTO PRINCIPAL ===========
    inteiro cor_vidro_escuro = g.criar_cor(30, 30, 30)
    inteiro cor_vidro_claro = g.criar_cor(50, 50, 50)
    inteiro cor_borda_vidro = g.criar_cor(180, 180, 180)
    
    inteiro caixa_texto_y = 60
    inteiro caixa_texto_altura = altura_necessaria
    
    // Desenhar caixa de texto
    g.definir_cor(cor_vidro_escuro)
    g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, falso, verdadeiro)
    
    g.definir_cor(cor_vidro_claro)
    g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, 40, falso, verdadeiro)
    
    g.definir_cor(cor_borda_vidro)
    g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, verdadeiro, falso)

    // Desenhar texto PRINCIPAL
    g.definir_cor(cor_branco)
    g.definir_fonte_texto("Arial")
    g.definir_tamanho_texto(20.0)
    
    inteiro y_final_texto = desenhar_texto_formatado(70, caixa_texto_y + 20, largura_disponivel, conteudo)
    
    // Verificar se ultrapassou
    inteiro altura_texto_real = y_final_texto - (caixa_texto_y + 20)
    se (altura_texto_real > caixa_texto_altura - 40) {
        caixa_texto_altura = altura_texto_real + 60
        
        // Redesenhar caixa
        g.definir_cor(cor_vidro_escuro)
        g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, falso, verdadeiro)
        
        g.definir_cor(cor_vidro_claro)
        g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, 40, falso, verdadeiro)
        
        g.definir_cor(cor_borda_vidro)
        g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, verdadeiro, falso)
        
        // Redesenhar texto
        g.definir_cor(cor_branco)
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(20.0)
        y_final_texto = desenhar_texto_formatado(70, caixa_texto_y + 20, largura_disponivel, conteudo)
    }

    // =========== CAIXA DE ESCOLHAS ===========
    inteiro caixa_escolhas_y = caixa_texto_y + caixa_texto_altura + 20
    
    inteiro num_escolhas = 0
    se (escolha1 != -1 e texto_escolha1 != "") { num_escolhas = num_escolhas + 1 }
    se (escolha2 != -1 e texto_escolha2 != "") { num_escolhas = num_escolhas + 1 }
    se (escolha3 != -1 e texto_escolha3 != "") { num_escolhas = num_escolhas + 1 }
    
    se (num_escolhas > 0) {
        inteiro altura_escolhas = (num_escolhas * 26) + 60
        
        // Verificar espaço
        se (caixa_escolhas_y + altura_escolhas > altura_janela - 60) {
            caixa_texto_altura = altura_janela - 60 - altura_escolhas - 40
            se (caixa_texto_altura < 120) {
                caixa_texto_altura = 120
            }
            caixa_escolhas_y = caixa_texto_y + caixa_texto_altura + 20
            
            // Redesenhar caixa de texto
            g.definir_cor(cor_vidro_escuro)
            g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, falso, verdadeiro)
            
            g.definir_cor(cor_vidro_claro)
            g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, 40, falso, verdadeiro)
            
            g.definir_cor(cor_borda_vidro)
            g.desenhar_retangulo(50, caixa_texto_y, largura_janela - 100, caixa_texto_altura, verdadeiro, falso)
            
            // Redesenhar texto
            g.definir_cor(cor_branco)
            g.definir_fonte_texto("Arial")
            g.definir_tamanho_texto(20.0)
            y_final_texto = desenhar_texto_formatado(70, caixa_texto_y + 20, largura_disponivel, conteudo)
        }
        
        // Desenhar caixa de escolhas
        g.definir_cor(cor_vidro_escuro)
        g.desenhar_retangulo(50, caixa_escolhas_y, largura_janela - 100, altura_escolhas, falso, verdadeiro)
        
        g.definir_cor(cor_vidro_claro)
        g.desenhar_retangulo(50, caixa_escolhas_y, largura_janela - 100, 30, falso, verdadeiro)
        
        g.definir_cor(cor_borda_vidro)
        g.desenhar_retangulo(50, caixa_escolhas_y, largura_janela - 100, altura_escolhas, verdadeiro, falso)
        
        // Título das escolhas
        g.definir_cor(cor_verde)
        g.definir_tamanho_texto(20.0)
        g.definir_estilo_texto(falso, verdadeiro, falso)
        g.desenhar_texto(70, caixa_escolhas_y + 20, "ESCOLHAS DISPONÍVEIS:")
        
        // Opções
        inteiro y_atual = caixa_escolhas_y + 50
        g.definir_tamanho_texto(16.0)
        g.definir_estilo_texto(falso, falso, verdadeiro)
        
        se (escolha1 != -1 e texto_escolha1 != "") {
            g.definir_cor(cor_verde)
            g.desenhar_texto(70, y_atual, "1 - " + texto_escolha1)
            y_atual = y_atual + 26
        }
        se (escolha2 != -1 e texto_escolha2 != "") {
            g.definir_cor(cor_verde)
            g.desenhar_texto(70, y_atual, "2 - " + texto_escolha2)
            y_atual = y_atual + 26
        }
        se (escolha3 != -1 e texto_escolha3 != "") {
            g.definir_cor(cor_verde)
            g.desenhar_texto(70, y_atual, "3 - " + texto_escolha3)
            y_atual = y_atual + 26
        }
    }

    // Barra inferior de status
    inteiro cor_status_fundo = g.criar_cor(20, 20, 20)
    g.definir_cor(cor_status_fundo)
    g.desenhar_retangulo(0, altura_janela - 40, largura_janela, 40, falso, verdadeiro)
    
    g.definir_cor(cor_borda_vidro)
    g.desenhar_retangulo(0, altura_janela - 40, largura_janela, 1, falso, falso)

    // Texto da barra de status
    g.definir_cor(cor_branco)
    g.definir_tamanho_texto(14.0)
    g.definir_estilo_texto(falso, falso, falso)

    g.desenhar_texto(10, altura_janela - 28,
        "Vida: " + t.inteiro_para_cadeia(vida_kael,10) +
        " | Curas: " + t.inteiro_para_cadeia(curas_restantes,10) +
        " | Pressione 1, 2 ou 3 para escolher")

    g.renderizar()

    se (imagem_fundo != -1) {
        g.liberar_imagem(imagem_fundo)
    }
}

    // Funﾃｧﾃ｣o reimplementada para usar funﾃｧﾃｵes de biblioteca válidas
  funcao inteiro desenhar_texto_formatado(inteiro x, inteiro y, inteiro largura_max, cadeia texto)
{
    cadeia linha_atual = ""
    cadeia palavra_atual = ""
    inteiro pos_y = y
    inteiro n = txt.numero_caracteres(texto)

    para (inteiro i = 0; i < n; i++) {

        caracter c = txt.obter_caracter(texto, i)

        se (c == '\n') {
            // desenha linha atual + palavra
            g.desenhar_texto(x, pos_y, linha_atual + palavra_atual)
            pos_y = pos_y + 22
            linha_atual = ""
            palavra_atual = ""
        }
        senao se (c == ' ') {
            cadeia teste = linha_atual + palavra_atual

            // sﾃｳ adiciona espaﾃｧo se couber
            se (g.largura_texto(teste + " ") <= largura_max) {
                linha_atual = teste + " "
            } senao {
                g.desenhar_texto(x, pos_y, linha_atual)
                pos_y = pos_y + 22
                linha_atual = palavra_atual + " "
            }

            palavra_atual = ""
        }
        senao {
            palavra_atual = palavra_atual + t.caracter_para_cadeia(c)
        }
    }

    // desenha o resto do texto
    se (linha_atual != "" ou palavra_atual != "") {
        g.desenhar_texto(x, pos_y, linha_atual + palavra_atual)
        pos_y = pos_y + 22
    }

    // retorna a posiﾃｧﾃ｣o final para uso externo (ex: escolhas)
    retorne pos_y + 10
}

    funcao vazio processar_escolhas_graficas()
{
    inteiro ultima_tecla = -1
    inteiro cooldown = 0

    faca {
        // Cooldown manual (debounce)
        se (cooldown > 0) {
            cooldown = cooldown - 1
            util.aguarde(20)
        }

        // Ler teclas com prioridade
        se (tec.tecla_pressionada(tec.TECLA_1)) {
            se (ultima_tecla != 1) {
                ultima_tecla = 1
                processar_escolha_teclado(1)
                cooldown = 8
            }
        }
        senao se (tec.tecla_pressionada(tec.TECLA_2)) {
            se (ultima_tecla != 2) {
                ultima_tecla = 2
                processar_escolha_teclado(2)
                cooldown = 8
            }
        }
        senao se (tec.tecla_pressionada(tec.TECLA_3)) {
            se (ultima_tecla != 3) {
                ultima_tecla = 3
                processar_escolha_teclado(3)
                cooldown = 8
            }
        }
        senao {
            // nenhuma tecla pressionada
            ultima_tecla = -1
        }

        util.aguarde(20)

    } enquanto (verdadeiro)
}


    // Funﾃｧﾃ｣o corrigida (removido loop interno e lﾃｳgica duplicada)
   funcao vazio processar_escolha_teclado(inteiro escolhas)
{
    inteiro proxima_cena = -1
    cadeia propriedade_escolha =
        "escolha" + t.inteiro_para_cadeia(escolhas, 10)

    se (obj.contem_propriedade(cena_atual, propriedade_escolha)) {
        proxima_cena =
            obj.obter_propriedade_tipo_inteiro(cena_atual, propriedade_escolha)
    }

    se (proxima_cena == -1) {
        retorne
    }

    // ================= COMBATES =================

    // ---- COMBATE 4 GUARDAS ----
    se (proxima_cena == cena_combate_contra4) {

        logico vitoria = sistema_combate_acao_direta(4)

        se (vitoria) {
            exibir_cena_grafica(cena_apos_combate_entrada)
        } senao {
            exibir_cena_grafica(cena_fim_de_jogo1)
        }
        retorne
    }

    // ---- COMBATE 5 GUARDAS ----
    senao se (proxima_cena == cena_combate_contra5) {

        logico vitoria = sistema_combate_acao_direta(5)

        se (vitoria) {

            se (cena_atual == cena_chegada_ao_andar_elevador2) {
                exibir_cena_grafica(cena_defender_a_sala1)
            }
            senao se (cena_atual == cena_defender_a_sala1
                      ou cena_atual == cena_defender_sala2) {
                exibir_cena_grafica(cena_o_final)
            }
            senao se (cena_atual == cena_acao_direta) {
                exibir_cena_grafica(cena_invasao_a_torre2)
            }
            senao se (cena_atual == cena_invasao_a_torre2) {
                exibir_cena_grafica(cena_que_vitoria)
            }
            
            senao se (cena_atual == cena_faxineiro_persuacao2
                      ou cena_atual == cena_faxineiro_neutralizar2) {
                exibir_cena_grafica(cena_chegada_ao_andar_escadaria2)
            }
            senao se (cena_atual == cena_chegada_ao_andar_escadaria2) {
                exibir_cena_grafica(cena_sala_de_controle2)
            }
            senao se (cena_atual == cena_defender_a_sala1) {
                exibir_cena_grafica(cena_o_final)
            }
            senao {
                // �沐� FALLBACK OBRIGATﾃ迭IO
                exibir_cena_grafica(proxima_cena)
            }

        } senao {
            exibir_cena_grafica(cena_fim_de_jogo1)
        }
        retorne
    }

    // ---- COMBATE 3 GUARDAS ----
    senao se (proxima_cena == cena_combate_contra3) {

        logico vitoria = sistema_combate_acao_direta(3)

        se (vitoria) {
            exibir_cena_grafica(cena_chegada_ao_andar_escadaria1)
        } senao {
            exibir_cena_grafica(cena_fim_de_jogo1)
        }
        retorne
    }

    // ---- COMBATE 2 GUARDAS ----
    senao se (proxima_cena == cena_combate_contra2) {

        logico vitoria = sistema_combate_acao_direta(2)

        se (vitoria) {

        	se (cena_atual == cena_seguir_sozinho) {
                exibir_cena_grafica(cena_invasao_a_torre1)}

             senao se (cena_atual == cena_encontro_faxineiro) {
                exibir_cena_grafica(cena_faxineiro_neutralizar)
            }
            senao se (cena_atual == cena_encontro_tecnico1) {
                exibir_cena_grafica(cena_chegada_ao_andar_bacup_desativado1)
            }
            senao {
                exibir_cena_grafica(cena_chegada_ao_andar_escadaria1)
            }

        } senao {
            exibir_cena_grafica(cena_fim_de_jogo1)
        }
        retorne
    }

    // ================= CENA NORMAL =================
    exibir_cena_grafica(proxima_cena)
}

    // Funﾃｧﾃ｣o para limpar a tela (simulada) - Mantida caso queira usar em modo console
    funcao vazio limpar_tela()
    {
        // Simular limpeza de tela imprimindo vﾃ｡rias linhas em branco
        para (inteiro i = 0; i < 50; i++) {
            escreva("\n")
        }
    }

    // ============= MODIFICAﾃ�ﾃグ NA CRIAﾃ�ﾃグ DE CENAS =============
    funcao vazio criar_todas_as_cenas()
    {

    	obj.atribuir_propriedade(cena_introducao, "arquivo", "texto/INTRODUÇÃO.txt") // define arquivo de texto da cena
        obj.atribuir_propriedade(cena_introducao, "imagem", "imagem/primeira imagem menu.jpg")   // define imagem da cena
        obj.atribuir_propriedade(cena_introducao, "escolha1", cena_inicio)                 // define destino opﾃｧﾃ｣o 1
        obj.atribuir_propriedade(cena_introducao, "texto_escolha1", "Continuar")              // texto exibido para opﾃｧﾃ｣o 1

        
        obj.atribuir_propriedade(cena_inicio, "arquivo", "texto/A Revolta de Nova Áurea.txt") // define arquivo de texto da cena
        obj.atribuir_propriedade(cena_inicio, "imagem", "imagem/primeira imagem menu.jpg")   // define imagem da cena
        obj.atribuir_propriedade(cena_inicio, "escolha1", cena_acao_furtiva)                 // define destino opﾃｧﾃ｣o 1
        obj.atribuir_propriedade(cena_inicio, "escolha2", cena_acao_direta)                  // define destino opﾃｧﾃ｣o 2
        obj.atribuir_propriedade(cena_inicio, "texto_escolha1", "Ação Furtiva")              // texto exibido para opﾃｧﾃ｣o 1
        obj.atribuir_propriedade(cena_inicio, "texto_escolha2", "Ação Direta")               // texto exibido para opﾃｧﾃ｣o 2
// CENA Aﾃ�ﾃグ FURTIVA
    obj.atribuir_propriedade(cena_acao_furtiva, "arquivo", "texto/Ação Furtiva.txt")
    obj.atribuir_propriedade(cena_acao_furtiva, "imagem", "imagem/imagem de introdução a primeira escolha.png")
    obj.atribuir_propriedade(cena_acao_furtiva, "escolha1", cena_seguir_sozinho)
    obj.atribuir_propriedade(cena_acao_furtiva, "escolha2", cena_aux_jack)
    obj.atribuir_propriedade(cena_acao_furtiva, "texto_escolha1", "Seguir Sozinho")
    obj.atribuir_propriedade(cena_acao_furtiva, "texto_escolha2", "Auxiliar Jack")

    // CENA SEGUIR SOZINHO
    obj.atribuir_propriedade(cena_seguir_sozinho, "arquivo", "texto/Seguir Sozinho.txt")
    obj.atribuir_propriedade(cena_seguir_sozinho, "imagem", "imagem/agir sozinho.png")
    obj.atribuir_propriedade(cena_seguir_sozinho, "escolha1", cena_combate_contra2)
    obj.atribuir_propriedade(cena_seguir_sozinho, "texto_escolha1", "Continuar")

    // CENA 2 窶� AUXILIAR JACK
    obj.atribuir_propriedade(cena_aux_jack, "arquivo", "/texto/Auxiliar Jack.txt")
    obj.atribuir_propriedade(cena_aux_jack, "imagem", "/imagem/escolha apoiar o jack.png")
    obj.atribuir_propriedade(cena_aux_jack, "escolha1", cena_invasao_a_torre1)
    obj.atribuir_propriedade(cena_aux_jack, "texto_escolha1", "Continuar")

    // INVASﾃグ ﾃ� TORRE (Furtiva)
    obj.atribuir_propriedade(cena_invasao_a_torre1, "arquivo", "/texto/Invasão da Torre Furtiva.txt")
    obj.atribuir_propriedade(cena_invasao_a_torre1, "imagem", "/imagem/invasão a torre.png")
    obj.atribuir_propriedade(cena_invasao_a_torre1, "escolha1", cena_sabotagem1)
    obj.atribuir_propriedade(cena_invasao_a_torre1, "escolha2", cena_encontro_faxineiro)
    obj.atribuir_propriedade(cena_invasao_a_torre1, "escolha3", cena_encontro_tecnico1)
    obj.atribuir_propriedade(cena_invasao_a_torre1, "texto_escolha1", "Desativar energia")
    obj.atribuir_propriedade(cena_invasao_a_torre1, "texto_escolha2", "Usar o Elevador")
    obj.atribuir_propriedade(cena_invasao_a_torre1, "texto_escolha3", "Ir pelas escadas")

    // SABOTAGEM
    obj.atribuir_propriedade(cena_sabotagem1, "arquivo", "/texto/Sabotagem Furtiva.txt")
    obj.atribuir_propriedade(cena_sabotagem1, "imagem", "/imagem/sabotagem-sala de energia.png")
    obj.atribuir_propriedade(cena_sabotagem1, "escolha1", cena_armadilha1)
    obj.atribuir_propriedade(cena_sabotagem1, "escolha2", cena_deixar_passar1)
    obj.atribuir_propriedade(cena_sabotagem1, "texto_escolha1", "Armar Armadilha")
    obj.atribuir_propriedade(cena_sabotagem1, "texto_escolha2", "Deixar Passar")

    // ENCONTRO FAXINEIRO
    obj.atribuir_propriedade(cena_encontro_faxineiro, "arquivo", "/texto/Elevador Furtivo.txt")
    obj.atribuir_propriedade(cena_encontro_faxineiro, "imagem", "/imagem/elevador.png")
    obj.atribuir_propriedade(cena_encontro_faxineiro, "escolha1", cena_faxineiro_persuasao)
    obj.atribuir_propriedade(cena_encontro_faxineiro, "escolha2", cena_faxineiro_neutralizar)
    obj.atribuir_propriedade(cena_encontro_faxineiro, "texto_escolha1", "Tentar Persuadir")
    obj.atribuir_propriedade(cena_encontro_faxineiro, "texto_escolha2", "Neutralizar")

    // CRIAR DISTRAﾃ�ﾃグ
    obj.atribuir_propriedade(cena_criar_distracao1, "arquivo", "/texto/Criar Distracao Furtiva.txt")
    obj.atribuir_propriedade(cena_criar_distracao1, "imagem", "/imagem/criar distração.png")
    obj.atribuir_propriedade(cena_criar_distracao1, "escolha1", cena_distracao_falha1)
    obj.atribuir_propriedade(cena_criar_distracao1, "escolha2", cena_defender_a_sala1)
    obj.atribuir_propriedade(cena_criar_distracao1, "texto_escolha1", "Criar Distração")
    obj.atribuir_propriedade(cena_criar_distracao1, "texto_escolha2", "Defender a Sala")
    
    // CENA INVASﾃグ A TORRE (Aﾃ�ﾃグ DIRETA)
    obj.atribuir_propriedade(cena_invasao_a_torre2, "arquivo", "/texto/INVASÃO A TORRE.txt")
    obj.atribuir_propriedade(cena_invasao_a_torre2, "imagem", "/imagem/invasão a torre 2.png")
    obj.atribuir_propriedade(cena_invasao_a_torre2, "escolha1", cena_combate_contra5)
    obj.atribuir_propriedade(cena_invasao_a_torre2, "texto_escolha1", "Continuar")
    
    // FAXINEIRO PERSUASﾃグ
    obj.atribuir_propriedade(cena_faxineiro_persuasao, "arquivo", "/texto/Persuasao Faxineiro.txt")
    obj.atribuir_propriedade(cena_faxineiro_persuasao, "imagem", "/imagem/persuasão faxineiro.png")
    obj.atribuir_propriedade(cena_faxineiro_persuasao, "escolha1", cena_corredor_sala_controle1)
    obj.atribuir_propriedade(cena_faxineiro_persuasao, "texto_escolha1", "Voltar ao Corredor")

    // FAXINEIRO NEUTRALIZAR
    obj.atribuir_propriedade(cena_faxineiro_neutralizar, "arquivo", "/texto/Neutralizar Faxineiro.txt")
    obj.atribuir_propriedade(cena_faxineiro_neutralizar, "imagem", "/imagem/neutralizar faxineiro.png")
    obj.atribuir_propriedade(cena_faxineiro_neutralizar, "escolha1", cena_corredor_sala_controle1)
    obj.atribuir_propriedade(cena_faxineiro_neutralizar, "texto_escolha1", "Voltar ao Corredor")

    // ARMADILHA
    obj.atribuir_propriedade(cena_armadilha1, "arquivo", "/texto/Armadilha.txt")
    obj.atribuir_propriedade(cena_armadilha1, "imagem", "/imagem/armadilha.png")
    obj.atribuir_propriedade(cena_armadilha1, "escolha1", cena_encontro_tecnico1)
    obj.atribuir_propriedade(cena_armadilha1, "texto_escolha1", "Investigar Técnico")

    // DEIXAR PASSAR
    obj.atribuir_propriedade(cena_deixar_passar1, "arquivo", "/texto/Deixar Passar.txt")
    obj.atribuir_propriedade(cena_deixar_passar1, "imagem", "/imagem/deixar passar.png")
    obj.atribuir_propriedade(cena_deixar_passar1, "escolha1", cena_encontro_tecnico1)
    obj.atribuir_propriedade(cena_deixar_passar1, "texto_escolha1", "Continuar")

    // ENCONTRO Tﾃ韻NICO (Furtiva)
    obj.atribuir_propriedade(cena_encontro_tecnico1, "arquivo", "/texto/Encontro Tecnico.txt")
    obj.atribuir_propriedade(cena_encontro_tecnico1, "imagem", "/imagem/encontro com tecnico.png")
    obj.atribuir_propriedade(cena_encontro_tecnico1, "escolha1", cena_encontro_persuasao)
    obj.atribuir_propriedade(cena_encontro_tecnico1, "escolha2", cena_encontro_neutralizar)
    obj.atribuir_propriedade(cena_encontro_tecnico1, "texto_escolha1", "Persuadir Técnico")
    obj.atribuir_propriedade(cena_encontro_tecnico1, "texto_escolha2", "Neutralizar Técnico")

    // ENCONTRO PERSUASﾃグ
    obj.atribuir_propriedade(cena_encontro_persuasao, "arquivo", "/texto/Persuasão tecnico.txt")
    obj.atribuir_propriedade(cena_encontro_persuasao, "imagem", "/imagem/persuasão tecnico.png")
    obj.atribuir_propriedade(cena_encontro_persuasao, "escolha1", cena_chegada_ao_andar_escadaria11)
    obj.atribuir_propriedade(cena_encontro_persuasao, "texto_escolha1", "Continuar")

    // ENCONTRO NEUTRALIZAR
    obj.atribuir_propriedade(cena_encontro_neutralizar, "arquivo", "/texto/Neutralizar tecnico.txt")
    obj.atribuir_propriedade(cena_encontro_neutralizar, "imagem", "/imagem/netralizar tecnico.png")
    obj.atribuir_propriedade(cena_encontro_neutralizar, "escolha1", cena_chegada_ao_andar_escadaria1)
    obj.atribuir_propriedade(cena_encontro_neutralizar, "texto_escolha1", "Continuar")

    // CHEGADA ANDAR ESCADARIA
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "arquivo", "/texto/CHEGADA À SALA DE CONTROLE.txt")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "imagem", "/imagem/chegada a sala de controle.jpeg")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "escolha1", cena_distracao1)
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "escolha2", cena_ataque_coordenado1)
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "texto_escolha1", "Criar Distração")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria11, "texto_escolha2", "Ataque Coordenado")

      // CHEGADA ANDAR ESCADARIA
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "arquivo", "/texto/Chegada Escadaria Furtiva.txt")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "imagem", "/imagem/chegada pela escadaria.png")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "escolha1", cena_distracao1)
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "escolha2", cena_ataque_coordenado1)
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "texto_escolha1", "Criar Distração")
    obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria1, "texto_escolha2", "Ataque Coordenado")

    // CHEGADA ANDAR ELEVADOR
    obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "arquivo", "/texto/Chegada Andar Elevador Acao Direta.txt")
    obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "imagem", "/imagem/chegada-elevador.bmp")
    obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "escolha1", cena_combate_contra5)
    obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "texto_escolha1", "Defender Sala")

    // CORREDOR SALA CONTROLE
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "arquivo", "/texto/Chegada Elevador Furtivo.txt")
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "imagem", "/imagem/chegada pelo elevador.png")
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "escolha1", cena_distracao1)
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "escolha2", cena_ataque_coordenado1)
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "texto_escolha1", "Criar Distração")
    obj.atribuir_propriedade(cena_corredor_sala_controle1, "texto_escolha2", "Ataque Coordenado")

    // DISTRAﾃ�ﾃグ SALA CONTROLE
    obj.atribuir_propriedade(cena_distracao1, "arquivo", "/texto/Criar Distracao.txt")
    obj.atribuir_propriedade(cena_distracao1, "imagem", "/imagem/chegada a sala de controle.jpeg")
    obj.atribuir_propriedade(cena_distracao1, "escolha1", cena_sala_de_controle)
    obj.atribuir_propriedade(cena_distracao1, "texto_escolha1", "Continuar")

    // ATAQUE COORDENADO
    obj.atribuir_propriedade(cena_ataque_coordenado1, "arquivo", "/texto/Ataque Coordenado.txt")
    obj.atribuir_propriedade(cena_ataque_coordenado1, "imagem", "/imagem/ataque cordenado.jpeg")
    obj.atribuir_propriedade(cena_ataque_coordenado1, "escolha1", cena_sala_de_controle2)
    obj.atribuir_propriedade(cena_ataque_coordenado1, "texto_escolha1", "Continuar")

    // SALA DE CONTROLE ESCOLHENDO A CHAVE
    obj.atribuir_propriedade(cena_sala_de_controle2, "arquivo", "/texto/sala de controle 2.txt")
    obj.atribuir_propriedade(cena_sala_de_controle2, "imagem", "/imagem/criar distração.png")
    obj.atribuir_propriedade(cena_sala_de_controle2, "escolha1", cena_rastreamento1)
    obj.atribuir_propriedade(cena_sala_de_controle2, "escolha2", cena_desativacao1)
    obj.atribuir_propriedade(cena_sala_de_controle2, "escolha3", cena_nucleo1)
    obj.atribuir_propriedade(cena_sala_de_controle2, "texto_escolha1", "Chave de Rastreamento")
    obj.atribuir_propriedade(cena_sala_de_controle2, "texto_escolha2", "Chave de Dessativasão")
    obj.atribuir_propriedade(cena_sala_de_controle2, "texto_escolha3", "Chave de Nucleo")

    
	// SALA DE CONTROLE ESCOLHENDO A CHAVE
    obj.atribuir_propriedade(cena_sala_de_controle, "arquivo", "/texto/sala de controle.txt")
    obj.atribuir_propriedade(cena_sala_de_controle, "imagem", "/imagem/cena final.png")
    obj.atribuir_propriedade(cena_sala_de_controle, "escolha1", cena_rastreamento1)
    obj.atribuir_propriedade(cena_sala_de_controle, "escolha2", cena_desativacao1)
    obj.atribuir_propriedade(cena_sala_de_controle, "escolha3", cena_nucleo1)
    obj.atribuir_propriedade(cena_sala_de_controle, "texto_escolha1", "Chave de Rastreamento")
    obj.atribuir_propriedade(cena_sala_de_controle, "texto_escolha2", "Chave de Dessativasão")
    obj.atribuir_propriedade(cena_sala_de_controle, "texto_escolha3", "Chave de Nucleo")

    // DESATIVAﾃ�ﾃグ (Furtiva)
    obj.atribuir_propriedade(cena_desativacao1, "arquivo", "/texto/chave de desativação.txt")
    obj.atribuir_propriedade(cena_desativacao1, "imagem", "/imagem/cena final.png")
    obj.atribuir_propriedade(cena_desativacao1, "escolha1", cena_o_final)
    obj.atribuir_propriedade(cena_desativacao1, "texto_escolha1", "Continuar")

    // Nﾃ咾LEO (Furtiva)
    obj.atribuir_propriedade(cena_nucleo1, "arquivo", "/texto/chave nucleo.txt")
    obj.atribuir_propriedade(cena_nucleo1, "imagem", "/imagem/cena final.png")
    obj.atribuir_propriedade(cena_nucleo1, "escolha1", cena_o_final)
    obj.atribuir_propriedade(cena_nucleo1, "texto_escolha1", "Continuar")

    // RASTREAMENTO
    obj.atribuir_propriedade(cena_rastreamento1, "arquivo", "/texto/chave de rastreio.txt")
    obj.atribuir_propriedade(cena_rastreamento1, "imagem", "/imagem/cena final.png")
    obj.atribuir_propriedade(cena_rastreamento1, "escolha1", cena_o_final)
    obj.atribuir_propriedade(cena_rastreamento1, "texto_escolha1", "Continuar")
	
	// DEFENDER A SALA (Furtiva)
    obj.atribuir_propriedade(cena_defender_a_sala1, "arquivo", "/texto/Defender Sala.txt")
    obj.atribuir_propriedade(cena_defender_a_sala1, "imagem", "/imagem/defender a sala.png")
    obj.atribuir_propriedade(cena_defender_a_sala1, "escolha1", cena_combate_contra5)
    obj.atribuir_propriedade(cena_defender_a_sala1, "texto_escolha1", "Continuar")
    

    // =============== ROTA AÇÃO DIRETA ==================

// AÇÃO DIRETA (Abertura) — NÃO ALTERAR
obj.atribuir_propriedade(cena_acao_direta, "arquivo", "texto/Ação Direta.txt")
obj.atribuir_propriedade(cena_acao_direta, "imagem", "/imagem/ação direta.png")
obj.atribuir_propriedade(cena_acao_direta, "escolha1", cena_invasao_a_torre2 )
obj.atribuir_propriedade(cena_acao_direta, "texto_escolha1", "Continuar")

// INVASÃO À TORRE (Ação Direta) -> imagem da rota furtiva
obj.atribuir_propriedade(cena_invasao_a_torre2, "arquivo", "/texto/INVASÃO A TORRE.txt")
obj.atribuir_propriedade(cena_invasao_a_torre2, "imagem", "/imagem/invasão a torre 2.png")
obj.atribuir_propriedade(cena_invasao_a_torre2, "escolha1", cena_combate_contra5)
obj.atribuir_propriedade(cena_invasao_a_torre2, "texto_escolha1", "Continuar")

// PÓS COMBATE — NÃO ALTERAR
obj.atribuir_propriedade(cena_que_vitoria,"arquivo","/texto/Que vitoria!.txt")
obj.atribuir_propriedade(cena_que_vitoria, "imagem", "/imagem/que_vitoria.png")
obj.atribuir_propriedade(cena_que_vitoria, "escolha1", cena_sabotagem2)
obj.atribuir_propriedade(cena_que_vitoria, "escolha2", cena_encontro_faxineiro2)
obj.atribuir_propriedade(cena_que_vitoria, "escolha3", cena_encontro_tecnico2)
obj.atribuir_propriedade(cena_que_vitoria, "texto_escolha1", "sabotagem")
obj.atribuir_propriedade(cena_que_vitoria, "texto_escolha2", "Usar Elevador")
obj.atribuir_propriedade(cena_que_vitoria, "texto_escolha3", "Escadaria")

// ENCONTRO FAXINEIRO (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_encontro_faxineiro2, "arquivo", "/texto/Elevador Furtivo.txt")
obj.atribuir_propriedade(cena_encontro_faxineiro2, "imagem", "/imagem/elevador.png")
obj.atribuir_propriedade(cena_encontro_faxineiro2, "escolha1", cena_faxineiro_persuacao2)
obj.atribuir_propriedade(cena_encontro_faxineiro2, "escolha2", cena_faxineiro_neutralizar2)
obj.atribuir_propriedade(cena_encontro_faxineiro2, "texto_escolha1", "Tentar Persuadir")
obj.atribuir_propriedade(cena_encontro_faxineiro2, "texto_escolha2", "Neutralizar")

// FAXINEIRO PERSUASÃO (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_faxineiro_persuacao2, "arquivo", "/texto/Persuasao Faxineiro.txt")
obj.atribuir_propriedade(cena_faxineiro_persuacao2, "imagem", "/imagem/persuasão faxineiro.png")
obj.atribuir_propriedade(cena_faxineiro_persuacao2, "escolha1", cena_chegada_ao_andar_escadaria2 )
obj.atribuir_propriedade(cena_faxineiro_persuacao2, "texto_escolha1", "Voltar ao Corredor")

// FAXINEIRO NEUTRALIZAR (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_faxineiro_neutralizar2, "arquivo", "/texto/Neutralizar Faxineiro.txt")
obj.atribuir_propriedade(cena_faxineiro_neutralizar2, "imagem", "/imagem/neutralizar faxineiro.png")
obj.atribuir_propriedade(cena_faxineiro_neutralizar2, "escolha1", cena_chegada_ao_andar_escadaria2)
obj.atribuir_propriedade(cena_faxineiro_neutralizar2, "texto_escolha1", "Voltar ao Corredor")

// SABOTAGEM (Direta) — NÃO ALTERAR
obj.atribuir_propriedade(cena_sabotagem2, "arquivo", "/texto/Sabotagem ação direta.txt")
obj.atribuir_propriedade(cena_sabotagem2, "imagem", "/imagem/sabotegem acao direta.png")
obj.atribuir_propriedade(cena_sabotagem2, "escolha1", cena_encontro_tecnico2)
obj.atribuir_propriedade(cena_sabotagem2, "texto_escolha1", "Continuar")

// ENCONTRO TÉCNICO (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_encontro_tecnico2, "arquivo", "/texto/Encontro Tecnico.txt")
obj.atribuir_propriedade(cena_encontro_tecnico2, "imagem", "/imagem/encontro com tecnico.png")
obj.atribuir_propriedade(cena_encontro_tecnico2, "escolha1", cena_tecnico_persuasao2)
obj.atribuir_propriedade(cena_encontro_tecnico2, "escolha2", cena_tecnico_neutralizar2)
obj.atribuir_propriedade(cena_encontro_tecnico2, "texto_escolha1", "Persuadir Técnico")
obj.atribuir_propriedade(cena_encontro_tecnico2, "texto_escolha2", "Neutralizar Técnico")

// PERSUASÃO TÉCNICO (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_tecnico_persuasao2, "arquivo", "/texto/Persuasão tecnico.txt")
obj.atribuir_propriedade(cena_tecnico_persuasao2, "imagem", "/imagem/persuasão tecnico.png")
obj.atribuir_propriedade(cena_tecnico_persuasao2, "escolha1", cena_chegada_ao_andar_escadaria2)
obj.atribuir_propriedade(cena_tecnico_persuasao2, "texto_escolha1", "Continuar")

// NEUTRALIZAR TÉCNICO (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_tecnico_neutralizar2, "arquivo", "/texto/Neutralizar tecnico.txt")
obj.atribuir_propriedade(cena_tecnico_neutralizar2, "imagem", "/imagem/netralizar tecnico.png")
obj.atribuir_propriedade(cena_tecnico_neutralizar2, "escolha1", cena_chegada_ao_andar_escadaria2)
obj.atribuir_propriedade(cena_tecnico_neutralizar2, "texto_escolha1", "Continuar")

// CHEGADA ESCADARIA (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria2, "arquivo", "/texto/Chegada Escadaria Direta.txt")
obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria2, "imagem", "/imagem/chegada pela escadaria direta.png")
obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria2, "escolha1", cena_combate_contra5)
obj.atribuir_propriedade(cena_chegada_ao_andar_escadaria2, "texto_escolha1", "Continuar")

// CHEGADA ELEVADOR (Ação Direta) -> imagem furtiva
obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "arquivo", "/texto/Chegada Elevador Direta.txt")
obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "imagem", "/imagem/chegada pelo elevador direto.png")
obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "escolha1", cena_combate_contra5)
obj.atribuir_propriedade(cena_chegada_ao_andar_elevador2, "texto_escolha1", "Continuar")

obj.atribuir_propriedade(cena_o_final, "arquivo", "/texto/o final.txt")
obj.atribuir_propriedade(cena_o_final, "imagem", "/imagem/o final.png")
obj.atribuir_propriedade(cena_o_final, "texto_escolha1", "Pode fechar o jogo")


    
    }
        
    
        
funcao vazio desenhar_interface_combate(
    inteiro imagem_combate,
    inteiro vida_guardas,
    inteiro numero_guardas,
    cadeia msg_jogador,
    cadeia msg_guarda,
    logico mostrar_acoes
) {
    // FUNDO
    se (imagem_combate != -1) {
        g.desenhar_imagem(0, 0, imagem_combate)
    } senao {
        g.definir_cor(cor_preto)
        g.limpar()
    }

	// ------- CAIXA DE VIDRO DO COMBATE -------
	inteiro vidro_escuro = g.criar_cor(30, 30, 30)
	inteiro vidro_claro  = g.criar_cor(60, 60, 60)
	inteiro borda_vidro  = g.criar_cor(200, 200, 200)
	
	// Caixa onde ficam HUD + aﾃｧﾃｵes
	g.definir_cor(vidro_escuro)
	g.desenhar_retangulo(40, 20, 800, 280, falso, verdadeiro)
	
	// Reflexo superior
	g.definir_cor(vidro_claro)
	g.desenhar_retangulo(40, 20, 600, 80, falso, verdadeiro)
	
	// Borda
	g.definir_cor(borda_vidro)
	g.desenhar_retangulo(40, 20, 600, 280, verdadeiro, falso)

    // Tﾃ控ULO
    g.definir_cor(cor_branco)
    g.definir_fonte_texto("Arial")
    g.definir_tamanho_texto(28.0)
    g.desenhar_texto(60, 40, "COMBATE")

    // STATUS
    g.definir_cor(cor_verde)
    g.definir_tamanho_texto(20.0)
    g.desenhar_texto(60, 100, "KAEL: " + t.inteiro_para_cadeia(vida_kael, 10) + "/10")
    g.desenhar_texto(60, 130, "CURAS: " + t.inteiro_para_cadeia(curas_restantes, 10))

    g.definir_cor(cor_amarelo)
    g.desenhar_texto(60, 160,
        "GUARDAS (" + t.inteiro_para_cadeia(numero_guardas, 10) + "): " +
        t.inteiro_para_cadeia(vida_guardas, 10)
    )

    // Aﾃ�ﾃ髭S
    se (mostrar_acoes) {
        g.definir_cor(cor_amarelo)
        g.definir_tamanho_texto(22.0)
        g.desenhar_texto(400, 80, "AÇÕES DISPONÍEIS:")

        g.definir_tamanho_texto(18.0)

        g.definir_cor(cor_verde)
        g.desenhar_texto(400, 120, "1 - ATACAR")

        g.definir_cor(cor_azul)
        g.desenhar_texto(400, 150, "2 - COORDENAR ATAQUE")

        g.definir_cor(cor_branco)
        g.desenhar_texto(400, 180, "3 - SE ESCONDER")

        se (curas_restantes > 0 e vida_kael < 10) {
            g.definir_cor(cor_vermelho)
            g.desenhar_texto(400, 210, "4 - CURAR (+4 de vida)")
        }
    }

    // MENSAGENS
    g.definir_cor(cor_branco)
    g.definir_tamanho_texto(20.0)

    se (msg_jogador != "") {
        g.desenhar_texto(60, 260, msg_jogador)
    }

    se (msg_guarda != "") {
        g.desenhar_texto(60, 300, msg_guarda)
    }

    g.renderizar()
}

    // ============= SISTEMA DE COMBATE GRﾃ：ICO =============
    funcao logico sistema_combate_acao_direta(inteiro numero_guardas)
{
		// CONFIGURAﾃ�ﾃグ
    inteiro vida_guardas = numero_guardas * 4
    logico vitoria = falso
    inteiro imagem_combate = g.carregar_imagem("imagem/Combate.png")

    cadeia msg_jogador = ""
    cadeia msg_guarda = ""

    // === LOOP DO COMBATE ===
    enquanto (vida_guardas > 0 e vida_kael > 0) {

        // --------------- EXIBE HUD E ESPERA TECLA ---------------
        inteiro acao = -1

        faca {
            desenhar_interface_combate(
                imagem_combate,
                vida_guardas,
                numero_guardas,
                msg_jogador,
                msg_guarda,
                verdadeiro
            )

            // LER TECLADO
            se (tec.tecla_pressionada(tec.TECLA_1)) { acao = 1 }
            senao se (tec.tecla_pressionada(tec.TECLA_2)) { acao = 2 }
            senao se (tec.tecla_pressionada(tec.TECLA_3)) { acao = 3 }
            senao se (tec.tecla_pressionada(tec.TECLA_4) e curas_restantes > 0) { acao = 4 }

            util.aguarde(40)

        } enquanto (acao == -1)

        // ===================== Aﾃ�ﾃグ DO JOGADOR ======================
        msg_guarda = ""
        inteiro dado = rolar_dado()

        escolha (acao) {

            // ------------ ATACAR ------------
            caso 1:
                se (dado >= 4) {
                    vida_guardas = vida_guardas -25
                    msg_jogador = "Você acerta um tiro forte! (-2) (Dado: " + t.inteiro_para_cadeia(dado,10) + ")"
                } senao {
                    vida_guardas = vida_guardas - 1
                    msg_jogador = "Você atinge um dos guardas (-1). (Dado: " + t.inteiro_para_cadeia(dado,10) + ")"
                }
                pare

            // ------------ COORDENAR ATAQUE ------------
            caso 2:
                se (dado >= 4) {
                    vida_guardas = vida_guardas - 3
                    msg_jogador = "Ataque coordenado bem-sucedido! (-3)."
                } senao {
                    msg_jogador = "A equipe falha em coordenar o ataque."
                }
                pare

            // ------------ ESCONDER ------------
            caso 3:
                se (dado >= 3) {
                    msg_jogador = "Você se esconde bem, os guardas têm chance reduzida!"
                } senao {
                    msg_jogador = "Você tenta se esconder, mas sem sucesso."
                }
                pare

            // ------------ CURAR ------------
            caso 4:
                vida_kael = vida_kael + 4
                curas_restantes = curas_restantes - 1
                msg_jogador = "Você se cura (+4)."
                pare
        }

        // Mostra resultado do jogador
        desenhar_interface_combate(imagem_combate, vida_guardas, numero_guardas, msg_jogador, "", falso)
        util.aguarde(800)

        // CHECA VITﾃ迭IA
        se (vida_guardas <= 0) {
            vitoria = verdadeiro
            pare
        }

        // ===================== ATAQUE DOS GUARDAS ======================
        inteiro dado_inimigo = util.sorteia(1,6)

        se (dado_inimigo >= 4) {
            vida_kael = vida_kael - 2
            msg_guarda = "Os guardas acertam você! (-2)"
        } senao {
            msg_guarda = "Os guardas erram o disparo!"
        }

        // mostra o ataque dos guardas
        desenhar_interface_combate(imagem_combate, vida_guardas, numero_guardas, msg_jogador, msg_guarda, falso)
        util.aguarde(800)
    }

    // libera imagem
    se (imagem_combate != -1) {
        g.liberar_imagem(imagem_combate)
    }

    retorne vitoria
}

    // ============= FUNﾃ�ﾃ髭S ORIGINAIS (adaptadas) =============
    funcao vazio perguntar_sistema_dados()
    {
        // Exibe menu perguntando se jogador quer rolar dados manualmente
        inteiro imagem_fundo = g.carregar_imagem("imagem/primeira imagem menu.jpg")
        se (imagem_fundo != -1) {
            g.desenhar_imagem(0, 0, imagem_fundo)
            g.liberar_imagem(imagem_fundo)
        }
        
       // Caixa de vidro atrﾃ｡s do texto
		 vidro = g.criar_cor(20, 20, 30)
		g.definir_opacidade(127)
		g.definir_cor(vidro)
		g.desenhar_retangulo(50, 50, largura_janela - 100, 380, falso, verdadeiro)

        
        g.definir_cor(cor_branco)
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(24.0)
        g.definir_estilo_texto(falso, verdadeiro, falso)
        g.desenhar_texto(250, 230, "SISTEMA DE DADOS") // tﾃｭtulo
        
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(16.0)
        g.definir_estilo_texto(falso, falso, falso)
        g.desenhar_texto(250, 280, "Como você prefere rolar os dados?")
        
        g.definir_fonte_texto("Arial")
        g.definir_tamanho_texto(18.0)
        g.definir_estilo_texto(falso, falso, verdadeiro)
        g.definir_cor(cor_verde)
        g.desenhar_texto(250, 330, "1 - EU QUERO ROLAR MEUS PRÓPRIOS DADOS")
        g.definir_cor(cor_azul)
        g.desenhar_texto(250, 370, "2 - O JOGO ROLA OS DADOS PARA MIM")
        
        g.renderizar()
        
        // Aguardar escolha
        inteiro escolha_dados = -1
        faca {
            se (tec.tecla_pressionada(tec.TECLA_1)) {
                escolha_dados = 1
                jogador_rola_dado = verdadeiro
                util.aguarde(300) // debounce
            }
            senao se (tec.tecla_pressionada(tec.TECLA_2)) {
                escolha_dados = 2
                jogador_rola_dado = falso
                util.aguarde(300)
            }
            util.aguarde(50)
        } enquanto (escolha_dados == -1)
    }

    funcao cadeia ler_arquivo_texto(cadeia caminho)
    {

    	
        // Lﾃｪ arquivo texto linha a linha e retorna todo conteﾃｺdo como string
        se (arq.arquivo_existe(caminho)) {
            inteiro arquivo = arq.abrir_arquivo(caminho, arq.MODO_LEITURA)
            cadeia conteudo = ""
            faca {
                cadeia linha = arq.ler_linha(arquivo) // lﾃｪ prﾃｳxima linha
                conteudo = conteudo + linha + "\n"    // concatena com quebra
            } enquanto (nao arq.fim_arquivo(arquivo))
            arq.fechar_arquivo(arquivo) // fecha arquivo
            retorne conteudo
        } senao {
            retorne "Arquivo nﾃ｣o encontrado: " + caminho + "\n" // mensagem caso nﾃ｣o exista
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 25412; 
 * @DOBRAMENTO-CODIGO = [145, 154, 166, 626];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */