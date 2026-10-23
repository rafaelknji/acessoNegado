// Quando todas as falas terminarem, ir para Sala1
if (global.indice >= array_length(falas)) {

    // Iniciar o fade para a Sala1
    if (!global.trocar_sala) {
        global.trocar_sala = true;
        global.sala_destino = sala1;
    }

    exit;
}

var texto = falas[global.indice];

if (letras < string_length(texto)) {
    temporizador += velocidade;

    if (temporizador >= 1) {
        letras += floor(temporizador);
        temporizador -= floor(temporizador);
        letras = min(letras, string_length(texto));
    }
}

if (keyboard_check_pressed(vk_anykey)) {

    if (letras < string_length(texto)) {
        letras = string_length(texto);
        temporizador = 0;
    } else {
        global.indice++;
        letras = 0;
        temporizador = 0;
    }
}
