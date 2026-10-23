// Impedir movimento durante o puzzle
if (global.puzzle_aberto) {

    image_speed = 0;
    exit;
}



// MOVIMENTAÇÃO TOP-DOWN
// =================================

xsp = 0;
ysp = 0;

// Horizontal
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    xsp -= 1;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    xsp += 1;
}

// Vertical
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    ysp -= 1;
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    ysp += 1;
}


// =================================
// DIREÇÃO E SPRITES
// =================================

var nova_sprite = sprite_index;

// Manter a escala da personagem
var escala = abs(image_yscale);

if (xsp > 0) {

    nova_sprite = sRayssaLado;
    image_xscale = escala;

} else if (xsp < 0) {

    nova_sprite = sRayssaLado;
    image_xscale = -escala;

} else if (ysp > 0) {

    nova_sprite = srRayssaFrente;
    image_xscale = escala;

} else if (ysp < 0) {

    nova_sprite = sRayssaCostas;
    image_xscale = escala;
}

// Trocar sprite apenas quando mudar de direção
if (sprite_index != nova_sprite) {
    sprite_index = nova_sprite;
}


// =================================
// NORMALIZAR DIAGONAL
// =================================

var distancia = point_distance(0, 0, xsp, ysp);

if (distancia > 0) {
    xsp /= distancia;
    ysp /= distancia;
}


// =================================
// MOVIMENTAÇÃO COM COLISÃO
// =================================

// Movimento horizontal
var movimento_x = xsp * velocidade;

if (!place_meeting(x + movimento_x, y, objparedes1) &&
    !place_meeting(x + movimento_x, y, objtoppar) &&
    !place_meeting(x + movimento_x, y, cerquinha) &&
    !place_meeting(x + movimento_x, y, objporta) &&
    !place_meeting(x + movimento_x, y, parede3obj)){

    x += movimento_x;
}


// Movimento vertical
var movimento_y = ysp * velocidade;

if (!place_meeting(x, y + movimento_y, objparedes1) &&
    !place_meeting(x, y + movimento_y, objtoppar) &&
    !place_meeting(x, y + movimento_y, cerquinha) &&
    !place_meeting(x, y + movimento_y, objporta) &&
    !place_meeting(x, y + movimento_y, parede3obj)) {

    y += movimento_y;
}


// =================================
// ANIMAÇÃO
// =================================

if (xsp != 0 || ysp != 0) {

    image_speed = 1;

} else {

    image_speed = 0;
    image_index = 0;
}