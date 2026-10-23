// Escurecer o cenário gradualmente
draw_set_color(c_black);
draw_set_alpha(transicao * 0.65);

draw_rectangle(
    0,
    0,
    room_width,
    room_height,
    false
);

// Restaurar configurações
draw_set_alpha(1);
draw_set_color(c_white);