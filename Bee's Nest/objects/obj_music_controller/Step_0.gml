if (room == Wasp || room == Wasp_50) {
    if (global.whealth <= 0) {
        if (audio_playing != sound_finale) {
            audio_stop_all();
            audio_playing = sound_finale;
            audio_play_sound(sound_finale, true, 1);
        }
    } else {
        if (audio_playing != sound_wasp) {
            audio_stop_all();
            audio_playing = sound_wasp;
            audio_play_sound(sound_wasp, true, 1);
        }
    }
}
