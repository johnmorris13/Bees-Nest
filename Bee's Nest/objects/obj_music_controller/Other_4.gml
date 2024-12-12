if (room == Hive || room == Tree || room == Queen) {
    if (audio_playing != sound_temperate) {
        audio_stop_all();
        audio_playing = sound_temperate;
		audio_play_sound(sound_temperate, true, 1);
    }
} else if (room == Outdoors || room == Porch || room == Cloud) {
    if (audio_playing != sound_hopes) {
        audio_stop_all();
        audio_playing = sound_hopes; 
		audio_play_sound(sound_hopes, true, 1);
    }
} else if (room == Underground || room == Mole) {
    if (audio_playing != sound_underground) {
        audio_stop_all();
        audio_playing = sound_underground;
		audio_play_sound(sound_underground, true, 1);
    }
} else if (room == Wasp || room == Wasp_50) {
    if (global.whealth <= 0) {
        if (audio_playing != sound_finale) {
            audio_stop_all();
            audio_playing = sound_finale;
			audio_play_sound(sound_finale, true, 1);
        }
    } else if (audio_playing != sound_wasp) {
        audio_stop_all();
        audio_playing = sound_wasp;
		audio_play_sound(sound_wasp, true, 1);
    }
} else if (room == Hallway) {
    if (audio_playing != sound_hallway) {
        audio_stop_all();
        audio_playing = sound_hallway; 
		audio_play_sound(sound_hallway, true, 1);
    }
} else if (room == Credits || room == Thanks) {
    if (audio_playing != sound_finale) {
        audio_stop_all();
        audio_playing = sound_finale;
		audio_play_sound(sound_finale, true, 1);
    }
} else if (room == Spider) {
    if (audio_playing != sound_spider) {
        audio_stop_all();
        audio_playing = sound_spider;
		audio_play_sound(sound_spider, true, 1);
    }
}
