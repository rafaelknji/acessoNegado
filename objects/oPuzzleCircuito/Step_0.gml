
// 1. MENSAGEM DE CONCLUSÃO

if (concluido) {

    if (letras_visiveis < string_length(texto_acesso)) {

        contador_texto++;

        if (contador_texto >= frames_por_letra) {

            letras_visiveis++;
            contador_texto = 0;
        }
    }

    exit;
}


// 2. ESPERAR AS PEÇAS PARAREM DE GIRAR
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

if (animando) {
    exit;
}


// 3. IDENTIFICAR AS PEÇAS

var total_pecas = colunas * linhas;

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

// Verificar quantidade de peças
if (array_length(pecas) != total_pecas) {
    exit;
}



// 4. ORGANIZAR A GRADE AUTOMATICAMENTE

// Encontrar os limites dos centros das peças

var menor_x = 1000000;
var menor_y = 1000000;
var maior_x = -1000000;
var maior_y = -1000000;

for (var i = 0; i < total_pecas; i++) {

    var p = pecas[i];

    var cx = (p.bbox_left + p.bbox_right) / 2;
    var cy = (p.bbox_top + p.bbox_bottom) / 2;

    menor_x = min(menor_x, cx);
    menor_y = min(menor_y, cy);

    maior_x = max(maior_x, cx);
    maior_y = max(maior_y, cy);
}

// Distância entre os centros da grade
var passo_x = (maior_x - menor_x) / (colunas - 1);
var passo_y = (maior_y - menor_y) / (linhas - 1);

if (passo_x <= 0 || passo_y <= 0) {
    exit;
}

// Montar grade
var grade = array_create(total_pecas, noone);

for (var i = 0; i < total_pecas; i++) {

    var p = pecas[i];

    var cx = (p.bbox_left + p.bbox_right) / 2;
    var cy = (p.bbox_top + p.bbox_bottom) / 2;

    var coluna = round((cx - menor_x) / passo_x);
    var linha = round((cy - menor_y) / passo_y);

    if (coluna < 0 || coluna >= colunas ||
        linha < 0 || linha >= linhas) {
        exit;
    }

    var indice = linha * colunas + coluna;

    if (grade[indice] != noone) {
        exit;
    }

    grade[indice] = p;
}

// Conferir se a grade está completa
for (var i = 0; i < total_pecas; i++) {

    if (grade[i] == noone) {
        exit;
    }
}


// ==========================================
// 5. CALCULAR AS CONEXÕES
// ==========================================

// Direções:
// 1 = Cima
// 2 = Direita
// 4 = Baixo
// 8 = Esquerda

var mascaras = array_create(total_pecas, 0);

var inicio_indice = -1;
var final_indice = -1;

for (var i = 0; i < total_pecas; i++) {

    var p = grade[i];
    var mascara = 0;

    if (p.object_index == oBlocoInicio) {
        inicio_indice = i;
    }

    if (p.object_index == oBlocoFinal) {
        final_indice = i;
    }

    // Preservar a configuração original do 3x3
    if (colunas == 3 && linhas == 3) {

        mascara = solucao[i];

        if (p.object_index != oBlocoInicio &&
            p.object_index != oBlocoFinal) {

            var giros = round(
                (p.angulo_solucao - p.image_angle) / 90
            );

            giros = ((giros mod 4) + 4) mod 4;

            repeat (giros) {
                mascara = ((mascara << 1) |
                           (mascara >> 3)) & 15;
            }
        }

    } else {

        // Conexões originais das sprites
        // quando image_angle = 0

        switch (p.object_index) {

            case oBlocoInicio:
                mascara = 2;
                break;

            case oBlocoFinal:
                mascara = 8;
                break;

            case oBlocoReto:
                mascara = 10;
                break;

            case oBlocoCurvo:
                mascara = 6;
                break;

            case oBlocoT:
                mascara = 11;
                break;
        }

        // Rotação atual da peça
        var giros = round(-p.image_angle / 90);

        giros = ((giros mod 4) + 4) mod 4;

        repeat (giros) {

            mascara = ((mascara << 1) |
                       (mascara >> 3)) & 15;
        }
    }

    mascaras[i] = mascara;
}

// Garantir que entrada e saída existem
if (inicio_indice == -1 || final_indice == -1) {
    exit;
}

// ==========================================
// VERIFICAR SOLUÇÃO DO 5X5
// ==========================================

if (colunas == 5 && linhas == 5) {

    // Peças obrigatórias
    var caminho = [
        0, 1, 2, 3, 4,
        6, 7, 8, 9,
        10, 11, 12, 13, 14,
        15, 16, 17,
        22, 23, 24
    ];

    var resolveu = true;
    var erros = 0;
    var relatorio = "";

    for (var i = 0; i < array_length(caminho); i++) {

        var indice = caminho[i];
        var p = grade[indice];

        if (p.object_index == oBlocoInicio ||
            p.object_index == oBlocoFinal) {
            continue;
        }

        var giros = round(
            (p.image_angle - p.angulo_solucao) / 90
        );

        giros = ((giros mod 4) + 4) mod 4;

        if (giros != 0 && !(p.object_index == oBlocoReto && giros == 2)) {

            resolveu = false;
            erros++;

            relatorio +=
                "Peca " + string(indice) +
                " | atual: " + string(p.image_angle) +
                " | esperado: " + string(p.angulo_solucao) +
                "\n";
        }
    }

    // Mostrar diagnóstico ao apertar D
    if (keyboard_check_pressed(ord("D"))) {

        show_message(
            "Pecas incorretas: " + string(erros) +
            "\n\n" + relatorio
        );
    }

    if (resolveu) {

        concluido = true;

        show_debug_message("PUZZLE 5X5 CONCLUIDO!");

        audio_play_sound(acessoLiberado, 0, false);
    }

    exit;
}




// ==========================================
// 6. VERIFICAR O CAMINHO DA ENERGIA
// ==========================================

var visitados = array_create(total_pecas, false);
var fila = array_create(total_pecas, 0);

var primeiro = 0;
var ultimo = 1;

fila[0] = inicio_indice;
visitados[inicio_indice] = true;

// Cima, direita, baixo, esquerda
var dx = [0, 1, 0, -1];
var dy = [-1, 0, 1, 0];

var bits = [1, 2, 4, 8];
var opostos = [4, 8, 1, 2];

while (primeiro < ultimo) {

    var atual = fila[primeiro];
    primeiro++;

    // Energia chegou ao bloco final
if (atual == final_indice) {

    concluido = true;
    break;
}

    var cx = atual mod colunas;
    var cy = atual div colunas;

    // Verificar os quatro vizinhos
    for (var d = 0; d < 4; d++) {

        var nx = cx + dx[d];
        var ny = cy + dy[d];

        if (nx < 0 || nx >= colunas ||
            ny < 0 || ny >= linhas) {

            continue;
        }

        var vizinho = ny * colunas + nx;

        if (visitados[vizinho]) {
            continue;
        }

        // As duas peças precisam ter
        // conexões compatíveis
        if ((mascaras[atual] & bits[d]) != 0 &&
            (mascaras[vizinho] & opostos[d]) != 0) {

            visitados[vizinho] = true;

            fila[ultimo] = vizinho;
            ultimo++;
        }
    }
}


// ==========================================
// 7. CONCLUSÃO DO PUZZLE
// ==========================================

if (concluido) {

    show_debug_message("PUZZLE CONCLUIDO!");

    // Som de acesso liberado
    audio_play_sound(acessoLiberado, 0, false);
}