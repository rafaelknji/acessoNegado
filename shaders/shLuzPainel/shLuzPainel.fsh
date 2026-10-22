varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_posicao;

uniform vec2 u_centro;
uniform float u_raio;
uniform float u_progresso;

void main()
{
    vec4 cor = texture2D(gm_BaseTexture, v_vTexcoord);

    // Distância do pixel até a luz vermelha
    float distancia = distance(v_posicao, u_centro);

    // Limitar o efeito à região da luz
    float area = 1.0 - step(u_raio, distancia);

    // Identificar tons vermelhos
    float vermelho = step(0.10, cor.r)
                   * step(cor.g * 1.15, cor.r)
                   * step(cor.b * 1.15, cor.r);

    // Transformar vermelho em verde
    // Preservando as diferenças de luminosidade
    vec3 verde = vec3(
        cor.r * 0.12,
        max(cor.r, cor.g),
        cor.b * 0.20
    );

    // Animar a mudança de cor
    float intensidade = area * vermelho * u_progresso;

    cor.rgb = mix(cor.rgb, verde, intensidade);

    gl_FragColor = cor * v_vColour;
}