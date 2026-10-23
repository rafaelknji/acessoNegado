// Escurecimento ao abrir o puzzle
transicao = 0;
velocidade_fade = 0.025;

// Inicializar variáveis globais somente uma vez
if (!variable_global_exists("trocar_sala")) {
    global.trocar_sala = false;
}

if (!variable_global_exists("fade_entrada")) {
    global.fade_entrada = false;
}

if (!variable_global_exists("sala_destino")) {
    global.sala_destino = -1;
}

// Começar com tela preta se chegou de outra Room
fade_troca_sala = global.fade_entrada ? 1 : 0;

// Velocidade do fade entre salas
velocidade_troca_sala = 0.03;

if (!variable_global_exists("puzzle_aberto")) {
    global.puzzle_aberto = false;
}