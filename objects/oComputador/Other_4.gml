// Esconder o puzzle ao iniciar
layer_set_visible("Puzzle", false);

// Garantir que a camada de escurecimento esteja visível
layer_set_visible("Escurecimento", true);

// Criar o controlador caso não exista
if (!instance_exists(oEscurecimento)) {

    instance_create_layer(
        0,
        0,
        "Escurecimento",
        oEscurecimento
    );
}

// Começar com o desfoque desativado
layer_enable_fx("Desfoque", false);




// TESTE TEMPORÁRIO DO PUZZLE
//global.puzzle_aberto = true;
//layer_set_visible("Puzzle", true);