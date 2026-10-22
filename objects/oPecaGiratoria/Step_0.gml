if (girando) {

    // Girar gradualmente
    image_angle -= velocidade_giro;

    // Verificar se chegou ao destino
    if (image_angle <= angulo_destino) {

        image_angle = angulo_destino;
        girando = false;
    }
}