/// @description
timeline_position++;
global.symbols = 0;

if (timeline_position = 6) {
	
	ini_open("save.ini"); // открытие файла
	soundVolume =  ini_read_real("Menu", "volume", 5);
	ini_close(); // закрытие файла

	audio_play_sound(Sound_Pasha, 0, 0);
	audio_sound_gain(Sound_Pasha, soundVolume/10, 0);
}


if (timeline_position = timeline_size(timeline_index)) {
	instance_destroy();
	roomslides(room_next(room));
}