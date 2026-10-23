window_set_size(1280,720)

concluido = false;

randomize();

concluido = false;

randomize();

// Conexões do circuito que você montou
// na Room, antes de embaralhar.
//
// 1 = cima
// 2 = direita
// 4 = baixo
// 8 = esquerda

solucao = [
     2, 10, 12,
     6, 10,  9,
     3, 10,  8
];

 // Solução correta do puzzle 5x5
solucao5x5 = [
     2, 10, 12,  6, 12,
    -1,  6, 11,  9,  5,
     6, 13,  6, 10,  9,
     3, 11, 13, -1, -1,
    -1, -1,  3, 10,  8
];


// Mensagem do terminal
texto_acesso = "ACESSO LIBERADO";

// Controle da digitação
letras_visiveis = 0;
contador_texto = 0;

// Velocidade da digitação
frames_por_letra = 4;

// Progresso da animação: 0 = azul, 1 = verde
progresso_verde = 0;

// Animação da luz do painel
anim_luz = 0;
pulso_luz = 0;

// Tempo de espera antes de mudar de sala
tempo_proxima_sala = 0;



