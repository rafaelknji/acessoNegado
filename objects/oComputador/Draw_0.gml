// Desenhar o computador apenas fora da Room2
if (room != sala2 && room != sala3) {
    draw_self();
};

// Verificar proximidade da Rayssa
if (instance_exists(oPlayer)) {

    var jogador = instance_nearest(x, y, oPlayer);

    var distancia = point_distance(
        x, y,
        jogador.x, jogador.y
    );

    if (distancia <= alcance_interacao) {

        draw_set_font(fntInteracao);
        draw_set_color(c_white);

        draw_set_halign(fa_center);
        draw_set_valign(fa_bottom);

        // Posição padrão (Room1)
		var texto_x = round((bbox_left + bbox_right) / 2);
		var texto_y = round(bbox_top - 6);

// Posição específica da Room2
	if (room == sala2) {
	    texto_x += 10;
	    texto_y -= 15;
	}

        // =================================
// CONTORNO PRETO FINO
// =================================

var escala = 0.6;
var borda = 0.5;

// Contorno discreto
draw_set_color(c_black);
draw_set_alpha(0.7);

// Esquerda
draw_text_transformed(
    texto_x - borda, texto_y,
    "[E] Interagir", escala, escala, 0
);

// Direita
draw_text_transformed(
    texto_x + borda, texto_y,
    "[E] Interagir", escala, escala, 0
);

// Cima
draw_text_transformed(
    texto_x, texto_y - borda,
    "[E] Interagir", escala, escala, 0
);

// Baixo
draw_text_transformed(
    texto_x, texto_y + borda,
    "[E] Interagir", escala, escala, 0
);

// =================================
// TEXTO BRANCO
// =================================

draw_set_alpha(1);
draw_set_color(c_white);

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