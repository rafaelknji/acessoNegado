// =================================
// CUTSCENE FINALIZADA
// =================================

// Aguardar a transição terminar
if (terminando) {
    exit;
}

// Quando todas as falas terminarem
if (global.indice >= array_length(falas)) {

    // Impedir que a cutscene reinicie
    terminando = true;

    // Reiniciar índice para futuras cutscenes
    global.indice = 0;

    // Esconder os textos da cutscene
    visible = false;

    // Definir destino
    global.sala_destino = sala2;

    // Iniciar animação de escurecimento
    global.trocar_sala = true;

    exit;
}


// =================================
// EFEITO DE DIGITAÇÃO
// =================================

var texto = falas[global.indice];

if (letras < string_length(texto)) {

    temporizador += velocidade;

    if (temporizador >= 1) {

        letras += floor(temporizador);
        temporizador -= floor(temporizador);

        letras = min(letras, string_length(texto));
    }
}


// =================================
// AVANÇAR DIÁLOGO
// =================================

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