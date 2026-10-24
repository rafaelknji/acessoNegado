// Parar a música ao sair da cena final
if (audio_is_playing(musica_id)) {
    audio_stop_sound(musica_id);
}