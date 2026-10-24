
if (global.indice >= array_length(falas)) exit;

var gw = display_get_gui_width();
var gh = display_get_gui_height();

var margem = 20;
var altura = gh * 0.32;

var x1 = margem;
var y1 = gh - altura - margem;
var x2 = gw - margem;
var y2 = gh - margem;


// Fundo da caixa
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

// Borda da caixa
draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);

// Texto
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_dialogue);

var texto = string_copy(
    falas[global.indice],
    1,
    floor(letras)
);

draw_text_ext(
    x1 + 20,
    y1 + 20,
    texto,
    50,
    x2 - x1 - 40
);

// Indicador para avançar
if (letras >= string_length(falas[global.indice])) {
    draw_text(x2 - 60, y2 - 60, "v");
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
