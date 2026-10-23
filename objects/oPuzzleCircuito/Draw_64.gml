if (concluido) {

    var texto_atual = string_copy(
        texto_acesso,
        1,
        letras_visiveis
    );

    if (letras_visiveis < string_length(texto_acesso)) {
        if ((contador_texto div 2) mod 2 == 0) {
            texto_atual += "_";
        }
    }

    var texto_x = x + 57;
    var texto_y = y + 33;

    if (view_enabled && view_visible[0]) {
        var cam = view_camera[0];

        texto_x = (texto_x - camera_get_view_x(cam))
                * display_get_gui_width()
                / camera_get_view_width(cam);

        texto_y = (texto_y - camera_get_view_y(cam))
                * display_get_gui_height()
                / camera_get_view_height(cam);
    }

    draw_set_font(fntTerminal);
    draw_set_color(c_lime);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
	if (colunas == 5 && linhas == 5) {

    // Ajustar a posição apenas no puzzle 5x5
    texto_x += 54;
    texto_y += 27;
}

 // Texto maior no puzzle 5x5
    if (colunas == 5 && linhas == 5) {
    draw_text_transformed(texto_x, texto_y, texto_atual, 1.32, 1.35, 0);

} else {
    // Texto normal no puzzle 3x3
    if (colunas == 3 && linhas == 3) {

    // Tamanho da fonte no 3x3
    draw_text_transformed(
        texto_x,
        texto_y,
        texto_atual,
        0.43,
        0.43,
        0
    );

} else {

    // Tamanho da fonte no 5x5
    draw_text_transformed(
        texto_x,
        texto_y,
        texto_atual,
        1.5,
        1.5,
        0
    );
}
}

    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}