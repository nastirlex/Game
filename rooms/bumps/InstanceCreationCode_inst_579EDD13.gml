ini_open("save.ini"); // открытие файла
soundVolume =  ini_read_real("Menu", "volume", 5);
ini_close(); // закрытие файла

audio_play_sound(Sound_Bumps1, 0, 1);
audio_sound_gain(Sound_Bumps1, soundVolume/10, 0);
audio_play_sound(Sound_Bumps2, 0, 1);
audio_sound_gain(Sound_Bumps2, soundVolume/10, 0);