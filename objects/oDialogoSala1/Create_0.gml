

// Tempo até o diálogo aparecer: 3 segundos
tempo = game_get_speed(gamespeed_fps) * 1;

// Controle do diálogo
dialogo_aberto = false;
dialogo_concluido = false;

global.dialogo_ativo = false;

// Texto da personagem
mensagem = "Rayssa, precisamos liberar o acesso! \nGire e conecte as pecas do circuito para abrir o caminho.";