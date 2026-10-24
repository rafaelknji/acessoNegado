// TESTE: pressionar T para ir à cena final
if (room == sala3 && keyboard_check_pressed(ord("T"))) {

    global.sala_destino = cenaFinaaaal;
    global.trocar_sala = true;
}

// VERIFICAR SENHA DA SALA 3

if (room == sala3 && global.confirmou_senha && !global.trocar_sala) {

    // Consumir a confirmação
    global.confirmou_senha = false;

    var acertou = false;

    var tentativas = [
        global.tryCode,
        global.try1,
        global.try2,
        global.try3,
        global.try4
    ];

    // Verificar as tentativas
    for (var t = 0; t < array_length(tentativas); t++) {

        var tentativa = tentativas[t];

        if (array_length(tentativa) < 4) {
            continue;
        }

        var correta = true;

        for (var i = 0; i < 4; i++) {

            if (tentativa[i] == noone ||
                tentativa[i] != global.pinCode[i]) {

                correta = false;
                break;
            }
        }

        if (correta) {
            acertou = true;
            break;
        }
    }

    // Senha correta
    if (acertou) {

        show_debug_message("SENHA CORRETA!");

        global.puzzle_aberto = false;

        // Esconder puzzle
        var camada = layer_get_id("Puzzle");

        if (camada != -1) {
            layer_set_visible(camada, false);
        }

        // Esconder Assets
        camada = layer_get_id("Assets");

        if (camada != -1) {
            layer_set_visible(camada, false);
        }

        // Remover desfoque
        camada = layer_get_id("Desfoque");

        if (camada != -1) {
            layer_enable_fx(camada, false);
        }

        // Transição para cena final
        global.sala_destino = cenaFinal;
        global.trocar_sala = true;
    }
}


// Fechar puzzle
if (global.puzzle_aberto) {

    if (keyboard_check_pressed(vk_escape)) {

        global.puzzle_aberto = false;

        layer_set_visible("Puzzle", false);
		layer_set_visible("Assets_1", false);

        // Remover o blur
        layer_enable_fx("Desfoque", false);
    }

    exit;
}


// Verificar proximidade da Rayssa
if (instance_exists(oPlayer)) {

    var jogador = instance_nearest(x, y, oPlayer);

    var distancia = point_distance(
        x, y,
        jogador.x, jogador.y
    );

    if (distancia <= alcance_interacao) {

        if (keyboard_check_pressed(ord("E"))) {

            global.puzzle_aberto = true;

            layer_set_visible("Puzzle", true);
			layer_set_visible("Assets_1", true);

            // Ativar o blur
            layer_enable_fx("Desfoque", true);
        }
    }
}