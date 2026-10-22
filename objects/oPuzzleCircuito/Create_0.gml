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

// Mensagem do terminal
texto_acesso = "ACESSO LIBERADO";

// Controle da digitação
letras_visiveis = 0;
contador_texto = 0;

// Velocidade da digitação
frames_por_letra = 4;