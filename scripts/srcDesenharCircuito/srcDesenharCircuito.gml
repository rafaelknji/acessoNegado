function scrDesenharCircuito() {

    // Encontrar o controlador
    var painel = instance_find(oPuzzleCircuito, 0);

    // Sem puzzle ou sem shader: desenhar normalmente
    if (painel == noone ||
        !shader_is_compiled(ShaderCircuito)) {

        draw_self();
        return;
    }

    // Se ainda não está mudando de cor
    if (painel.progresso_verde <= 0) {
        draw_self();
        return;
    }

    // Aplicar shader
    shader_set(ShaderCircuito);

    var uniform_progresso = shader_get_uniform(
        ShaderCircuito,
        "u_progresso"
    );

    shader_set_uniform_f(
        uniform_progresso,
        painel.progresso_verde
    );

    // Desenhar a peça com o shader
    draw_self();

    // Desativar shader
    shader_reset();
}