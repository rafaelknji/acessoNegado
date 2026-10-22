// Encontrar o shader
var shader_luz = asset_get_index("shLuzPainel");

// Coordenadas da luz vermelha
// USE AQUI OS VALORES QUE VOCE JA ACERTOU
var centro_x = 285;
var centro_y = 117;

var raio_luz = 11;

// Verificar se o shader existe e compilou
if (shader_luz == -1) {
    draw_self();
    exit;
}

if (!shader_is_compiled(shader_luz)) {
    draw_self();
    exit;
}

// Antes de concluir, desenhar normalmente
if (anim_luz <= 0) {
    draw_self();
    exit;
}

// Ativar shader
shader_set(shader_luz);

// Enviar a posição real da luz na Room
var u_centro = shader_get_uniform(
    shader_luz, "u_centro"
);

shader_set_uniform_f(
    u_centro,
    x + centro_x,
    y + centro_y
);

// Enviar raio
var u_raio = shader_get_uniform(
    shader_luz, "u_raio"
);

shader_set_uniform_f(u_raio, raio_luz);

// Enviar progresso da animação
var u_progresso = shader_get_uniform(
    shader_luz, "u_progresso"
);

shader_set_uniform_f(
    u_progresso,
    anim_luz
);

// Desenhar o painel
draw_self();

// Desativar shader
shader_reset();