
if (global.indice >= array_length(falas)) {
    instance_destroy();
    exit;
}

var texto = falas[global.indice];

// Aguarda a cutscene terminar antes de avançar
if (global.indice == 3 && !global.rolouCutscene) {
    exit;
}

if (letras < string_length(texto)) {
    temporizador += velocidade;

    if (temporizador >= 1) {
        letras += floor(temporizador);
        temporizador -= floor(temporizador);
        letras = min(letras, string_length(texto));
    }
}

if (keyboard_check_pressed(vk_space)
|| keyboard_check_pressed(vk_enter)
|| keyboard_check_pressed(ord("Z"))) {

    if (letras < string_length(texto)) {
        letras = string_length(texto);
        temporizador = 0;
    } else {
        global.indice++;
        letras = 0;
        temporizador = 0;
    }
}
