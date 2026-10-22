// Guardar orientação original
angulo_solucao = image_angle;

// Embaralhar a rotação inicial
image_angle -= irandom(3) * 90;

// Configurações da animação
girando = false;
angulo_destino = image_angle;
velocidade_giro = 9;