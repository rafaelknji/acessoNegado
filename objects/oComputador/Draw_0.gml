// Desenhar computador
draw_self();

// Verificar proximidade da Rayssa
if (instance_exists(oPlayer)) {

    var jogador = instance_nearest(x, y, oPlayer);

    var distancia = point_distance(
        x, y,
        jogador.x, jogador.y
    );

    if (distancia <= alcance_interacao) {

        draw_set_font(fntInteracao);
        draw_set_color(c_black);

        draw_set_halign(fa_center);
        draw_set_valign(fa_bottom);

        // Posição
        var texto_x = round((bbox_left + bbox_right) / 2);
        var texto_y = round(bbox_top - 6);

        // Escala da fonte
        var escala = 1;

        draw_text_transformed(
            texto_x,
            texto_y,
            "[E] Interagir",
            escala,
            escala,
            0
        );

        // Restaurar configurações
        draw_set_font(-1);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}