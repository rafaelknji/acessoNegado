if (dialogo_aberto) {

    var largura = display_get_gui_width();
    var altura = display_get_gui_height();

    // =================================
    // CAIXA DE DIÁLOGO
    // =================================

    var x1 = largura * 0.08;
    var y1 = altura - 230;
    var x2 = largura * 0.92;
    var y2 = altura - 110;

    // Fundo roxo escuro
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(45, 27, 43));
    draw_rectangle(x1, y1, x2, y2, false);

    // Borda bege
    draw_set_color(make_color_rgb(155, 135, 115));
    draw_rectangle(x1, y1, x2, y2, true);

    // =================================
    // RETRATO DA MIRELLA
    // =================================

    var altura_retrato = 160;
    var escala_retrato = altura_retrato / sprite_get_height(mirella);

    var retrato_x = x2 - 100;
    var retrato_y = y2 - altura_retrato;

    draw_sprite_ext(
        mirella,
        0,
        retrato_x,
        retrato_y,
        escala_retrato,
        escala_retrato,
        0,
        c_white,
        1
    );

    // =================================
    // TEXTO DO DIÁLOGO
    // =================================

    draw_set_font(fntDialogo);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Espaço reservado para a Mirella
    var largura_texto = ((x2 - x1) - 180) / 0.6;

draw_text_ext_transformed(
    x1 + 25,
    y1 + 29,
    mensagem,
    43,
    largura_texto,
    0.6,
    0.6,
    0
);

    // =================================
    // INSTRUÇÃO PARA CONTINUAR
    // =================================

    draw_set_font(fntInteracao);
    draw_set_halign(fa_right);

    draw_text_transformed(
        x2 - 80,
        y2 - 22,
        "[ESPACO] Continuar",
        1.2,
        1.2,
        0
    );

    // Restaurar configurações
    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}