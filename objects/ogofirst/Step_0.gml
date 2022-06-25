/// @description Insert description here
// You can write your code in this editor
timer -= 1;
ini_open("save.ini"); // открытие файла
soundVolume =  ini_read_real("Menu", "volume", 5);
ini_close(); // закрытие файла


if (timer == 300 || keyboard_check(vk_enter)){
	audio_play_sound(Sound_Pasha2, 0, 0);
	audio_sound_gain(Sound_Pasha2, soundVolume/10, 0);
}

if (timer == 0 || keyboard_check(vk_enter)){
	audio_stop_all();
	roomslides(room_first);
}

