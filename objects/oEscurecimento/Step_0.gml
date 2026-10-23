// Abrir ou fechar suavemente
if (global.puzzle_aberto) {
    transicao = min(transicao + velocidade_fade, 1);
} else {
    transicao = max(transicao - velocidade_fade, 0);
}

// Fazer o painel e as peças aparecerem aos poucos
with (oPuzzleCircuito) {
    image_alpha = other.transicao;
}

with (oBlocoReto) {
    image_alpha = other.transicao;
}

with (oBlocoCurvo) {
    image_alpha = other.transicao;
}

with (oBlocoT) {
    image_alpha = other.transicao;
}

with (oBlocoInicio) {
    image_alpha = other.transicao;
}

with (oBlocoFinal) {
    image_alpha = other.transicao;
}

// Escurecer antes de trocar de Room
if (global.trocar_sala) {

    fade_troca_sala = min(
        fade_troca_sala + velocidade_troca_sala,
        1
    );

    if (fade_troca_sala >= 1) {

        global.trocar_sala = false;
        global.fade_entrada = true;
        global.puzzle_aberto = false;

        room_goto(global.sala_destino);
        exit;
    }
}

// Clarear ao entrar na nova Room
else if (global.fade_entrada) {

    fade_troca_sala = max(
        fade_troca_sala - velocidade_troca_sala,
        0
    );

    if (fade_troca_sala <= 0) {
        global.fade_entrada = false;
    }
}