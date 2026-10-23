// Centro da tela
var centro_x = display_get_gui_width() / 2;
var pos_y = display_get_gui_height() * 0.70;

// Efeito de piscar
var alpha = 0.7 + 0.5 * sin(tempo);

// Configuração do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Sombra
draw_set_alpha(alpha);
draw_set_color(make_color_rgb(20, 55, 40));

draw_text_transformed(centro_x + 2, pos_y + 2,
    "PRESSIONE QUALQUER TECLA PARA INICIAR", 1.3, 1.3, 0);

// Texto principal
draw_set_color(make_color_rgb(229, 245, 174));

draw_text_transformed(centro_x, pos_y,
    "PRESSIONE QUALQUER TECLA PARA INICIAR", 1.3, 1.3, 0);

// Restaurar configurações
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);