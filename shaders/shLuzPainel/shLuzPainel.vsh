attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_posicao;

void main()
{
    vec4 pos = vec4(in_Position.xyz, 1.0);

    gl_Position =
        gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * pos;

    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;

    // Posição do pixel na Room
    v_posicao = in_Position.xy;
}