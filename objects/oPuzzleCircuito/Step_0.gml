if (concluido) {

    // Digitar a mensagem letra por letra
    if (letras_visiveis < string_length(texto_acesso)) {

        contador_texto++;

        if (contador_texto >= frames_por_letra) {

            letras_visiveis++;
            contador_texto = 0;
        }
    }

    exit;
}

// Verificar se alguma peça está girando
var animando = false;

var objetos_giratorios = [
    oBlocoReto,
    oBlocoCurvo,
    oBlocoT
];

for (var t = 0; t < array_length(objetos_giratorios); t++) {

    var obj = objetos_giratorios[t];

    for (var j = 0; j < instance_number(obj); j++) {

        var p = instance_find(obj, j);

        if (p.girando) {
            animando = true;
        }
    }
}

// Esperar a animação terminar antes de verificar conexões
if (animando) {
    exit;
}

// Encontrar as peças
var objetos = [
    oBlocoInicio,
    oBlocoReto,
    oBlocoCurvo,
    oBlocoT,
    oBlocoFinal
];

var pecas = [];

for (var t = 0; t < array_length(objetos); t++) {
    var obj = objetos[t];

    for (var j = 0; j < instance_number(obj); j++) {
        array_push(pecas, instance_find(obj, j));
    }
}

// Precisamos de nove peças
if (array_length(pecas) != 9) {
    exit;
}

// Organizar pelas posições da Room:
// primeiro as linhas, depois as colunas
array_sort(pecas, function(a, b) {

    var ay = (a.bbox_top + a.bbox_bottom) / 2;
    var by = (b.bbox_top + b.bbox_bottom) / 2;

    if (abs(ay - by) > 16) {
        return ay - by;
    }

    var ax = (a.bbox_left + a.bbox_right) / 2;
    var bx = (b.bbox_left + b.bbox_right) / 2;

    return ax - bx;
});

// Calcular conexões atuais
var mascaras = array_create(9, 0);

for (var i = 0; i < 9; i++) {

    var p = pecas[i];
    var mascara = solucao[i];

    if (i != 0 && i != 8) {

        // Quantidade de giros desde a posição correta
        var giros = round(
            (p.angulo_solucao - p.image_angle) / 90
        );

        giros = ((giros mod 4) + 4) mod 4;

        repeat (giros) {
            mascara = ((mascara << 1) | (mascara >> 3)) & 15;
        }
    }

    mascaras[i] = mascara;
}

// Busca de caminho do início até o final
var visitados = array_create(9, false);
var fila = array_create(9, 0);

var primeiro = 0;
var ultimo = 1;

fila[0] = 0;
visitados[0] = true;

var dx = [0, 1, 0, -1];
var dy = [-1, 0, 1, 0];

var bits = [1, 2, 4, 8];
var opostos = [4, 8, 1, 2];

while (primeiro < ultimo) {

    var atual = fila[primeiro];
    primeiro++;

    // Energia chegou ao bloco final
    if (atual == 8) {
        concluido = true;
        break;
    }

    var cx = atual mod 3;
    var cy = atual div 3;

    for (var d = 0; d < 4; d++) {

        var nx = cx + dx[d];
        var ny = cy + dy[d];

        if (nx < 0 || nx >= 3 ||
            ny < 0 || ny >= 3) {
            continue;
        }

        var vizinho = ny * 3 + nx;

        if (visitados[vizinho]) {
            continue;
        }

        // Verificar os dois lados da conexão
        if ((mascaras[atual] & bits[d]) != 0 &&
            (mascaras[vizinho] & opostos[d]) != 0) {

            visitados[vizinho] = true;
            fila[ultimo] = vizinho;
            ultimo++;
        }
    }
}

// Puzzle concluído
if (concluido) {

    show_debug_message("PUZZLE CONCLUIDO!");

    // Reproduzir bip de sucesso
    audio_play_sound(acessoLiberado, 0, false);

}