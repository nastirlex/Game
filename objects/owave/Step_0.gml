/// @description Insert description here
// You can write your code in this editor

timer -= 1;

if (timer <= 250){
	image_alpha = 0;
	audio_stop_sound(Sound_Water);
}

if (timer == 0) {
	timer = 100 * 5;
	image_alpha = 1;
	
	ini_open("save.ini"); // открытие файла
	soundVolume =  ini_read_real("Menu", "volume", 5);
	ini_close(); // закрытие файла

	audio_play_sound(Sound_Water, 0, 0);
	audio_sound_gain(Sound_Water, soundVolume/10, 0);

}