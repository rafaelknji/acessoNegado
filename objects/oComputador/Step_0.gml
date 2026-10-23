
// MUSICA DO PUZZLE


// Tocar enquanto o puzzle estiver aberto
var tocar_musica = global.puzzle_aberto;

// Parar quando o puzzle for concluído
if (instance_exists(oPuzzleCircuito)) {
    if (oPuzzleCircuito.concluido) {
        tocar_musica = false;
    }
}

if (tocar_musica) {

    // Começar uma única vez, em loop
   if (musica_puzzle_id == -1) {

    // Música padrão do puzzle 3x3
    var musica = musicPuzzle1;

    // Música específica do puzzle 5x5
    if (instance_exists(oPuzzleCircuito)) {

        if (oPuzzleCircuito.colunas == 5 &&
            oPuzzleCircuito.linhas == 5) {

            musica = musicPuzzle2;
        }
    }

    // Reproduzir música em loop
    musica_puzzle_id = audio_play_sound(
        musica,
        1,
        true,
        0.35
    );
}

} else {

    // Parar ao fechar ou concluir
    if (musica_puzzle_id != -1) {
        audio_stop_sound(musica_puzzle_id);
        musica_puzzle_id = -1;
    }
}



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