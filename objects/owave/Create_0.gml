/// @description Insert description here
// You can write your code in this editora

timer = 100 * 5;
ini_open("save.ini"); // открытие файла
soundVolume =  ini_read_real("Menu", "volume", 5);
ini_close(); // закрытие файла

audio_play_sound(Sound_Water, 0, 0);
audio_sound_gain(Sound_Water, soundVolume/30, 0);
