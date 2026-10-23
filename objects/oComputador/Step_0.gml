// Fechar puzzle
if (global.puzzle_aberto) {

    if (keyboard_check_pressed(vk_escape)) {

        global.puzzle_aberto = false;

        layer_set_visible("Puzzle", false);

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

            // Ativar o blur
            layer_enable_fx("Desfoque", true);
        }
    }
}