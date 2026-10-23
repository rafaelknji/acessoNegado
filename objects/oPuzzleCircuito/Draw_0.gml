// Desenhar o painel do puzzle
draw_self();

// Exibir mensagem quando concluir
if (concluido) {

    var texto_atual = string_copy(
        texto_acesso,
        1,
        letras_visiveis
    );
	

    // Posição relativa ao próprio puzzle
    var texto_x = x;
    var texto_y = y;
    var escala = 1;

    // Puzzle 5x5
    if (colunas == 5 && linhas == 5) {
        texto_x += 63;
        texto_y += 37;
        escala = 0.47;
    }

    // Puzzle 3x3
    if (colunas == 3 && linhas == 3) {
        texto_x += 57;
        texto_y += 33;
        escala = 0.43;
    }

    draw_set_font(fntTerminal);
    draw_set_color(c_lime);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text_transformed(
        texto_x,
        texto_y,
        texto_atual,
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



