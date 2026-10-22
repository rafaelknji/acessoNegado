// Impedir novos cliques durante a animação
if (girando) {
    exit;
}

// Definir a próxima rotação
angulo_destino = image_angle - 90;

// Iniciar animação
girando = true;

// Reproduzir som
audio_play_sound(giroBloco, 0, false);