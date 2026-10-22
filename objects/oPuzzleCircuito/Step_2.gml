if (concluido) {

    // Circuitos: azul → verde
    progresso_verde += delta_time / 800000;
    progresso_verde = clamp(progresso_verde, 0, 1);

    // Luz do painel: vermelho → verde
    anim_luz += delta_time / 700000;
    anim_luz = clamp(anim_luz, 0, 1);
}