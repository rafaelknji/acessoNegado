// Não verificar novamente se já iniciou a transição
if (global.trocar_sala) {
    exit;
}

// Todas as tentativas do jogador
var tentativas = [
    global.try1,
    global.try2,
    global.try3,
    global.try4
];

// Percorrer as tentativas
for (var t = 0; t < array_length(tentativas); t++) {

    var tentativa = tentativas[t];
    var senha_correta = true;

    // Conferir os 4 números
    for (var i = 0; i < 4; i++) {

        if (tentativa[i] == noone ||
            tentativa[i] != global.pinCode[i]) {

            senha_correta = false;
            break;
        }
    }

    // Se os 4 números estiverem corretos
    if (senha_correta) {

        // Fechar o puzzle
        global.puzzle_aberto = false;

        var camada_puzzle = layer_get_id("Puzzle");

        if (camada_puzzle != -1) {
            layer_set_visible(camada_puzzle, false);
        }

        var camada_assets = layer_get_id("Assets");

        if (camada_assets != -1) {
            layer_set_visible(camada_assets, false);
        }

        // Desativar desfoque
        var camada_desfoque = layer_get_id("Desfoque");

        if (camada_desfoque != -1) {
            layer_enable_fx(camada_desfoque, false);
        }

        // Iniciar transição para a cena final
        global.sala_destino = cenaFinal;
        global.trocar_sala = true;

        break;
    }
}