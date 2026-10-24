// Esconder o puzzle ao iniciar
var camada_puzzle = layer_get_id("Puzzle");

// Esconder a camada Assets ao iniciar
var camada_assets = layer_get_id("Assets_1");

if (camada_assets != -1) {
    layer_set_visible(camada_assets, false);
}

if (camada_puzzle != -1) {
    layer_set_visible(camada_puzzle, false);
}

// Manter a camada de escurecimento visível
var camada_escuro = layer_get_id("Escurecimento");

if (camada_escuro != -1) {

    layer_set_visible(camada_escuro, true);

    // Criar o objeto somente se ainda não existir
    if (!instance_exists(oEscurecimento)) {

        instance_create_layer(
            0,
            0,
            camada_escuro,
            oEscurecimento
        );
    }
}

// Desativar o desfoque inicialmente
var camada_desfoque = layer_get_id("Desfoque");

if (camada_desfoque != -1) {
    layer_enable_fx(camada_desfoque, false);
}