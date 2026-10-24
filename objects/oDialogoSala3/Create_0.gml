// Tempo até o diálogo aparecer: 3 segundos
tempo = game_get_speed(gamespeed_fps) * 1;

// Controle do diálogo
dialogo_aberto = false;
dialogo_concluido = false;

global.dialogo_ativo = false;

// Texto da personagem
mensagem = "O acesso a ultima camada mudou! \nDeixei o desbloqueio mais facil para voce. Voce tem poucas tentativas.";