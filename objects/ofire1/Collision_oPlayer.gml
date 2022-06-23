/// @description Insert description here
// You can write your code in this editor
if (sprite_index != (anim_001) && keyboard_check(vk_enter)){
	y -= 210;
	x -= 45;
	sprite_index = (anim_001);
	
	ini_open("save.ini"); // открытие файла
	soundVolume =  ini_read_real("Menu", "volume", 5);
	ini_close(); // закрытие файла

	audio_play_sound(Sound_Fire, 0, 0);
	audio_sound_gain(Sound_Fire, soundVolume/10, 0);
}
