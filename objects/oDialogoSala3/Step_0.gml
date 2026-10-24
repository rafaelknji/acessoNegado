// Aguardar 3 segundos
if (!dialogo_aberto && !dialogo_concluido) {

    tempo--;

    if (tempo <= 0) {
        dialogo_aberto = true;
        global.dialogo_ativo = true;
    }
}

// Fechar diálogo pressionando Espaço
if (dialogo_aberto) {

    if (keyboard_check_pressed(vk_space)) {

        dialogo_aberto = false;
        dialogo_concluido = true;

        global.dialogo_ativo = false;
    }
}