varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_progresso;

void main()
{
    vec4 cor = texture2D(gm_BaseTexture, v_vTexcoord);

    // Identificar pixels azuis/cianos
    float diferenca = min(cor.g, cor.b) - cor.r;

    float mascara = smoothstep(
        0.10,
        0.28,
        diferenca
    );

    // Criar versão verde preservando variações de brilho
    vec3 verde = vec3(
        cor.r * 0.55,
        max(cor.g, cor.b * 0.9),
        cor.b * 0.18
    );

    // Transição gradual de azul para verde
    cor.rgb = mix(
        cor.rgb,
        verde,
        mascara * u_progresso
    );

    gl_FragColor = cor * v_vColour;
}