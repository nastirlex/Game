/// @description Insert description here
// You can write your code in this editor
#macro MAIN 0
#macro SETTINGS 1
#macro TOTAL 2

audio_play_sound(Sound_menu, 0.5, 0);

global.dsm_settings = ds_map_create();
#macro set global.dsm_settings

ds_map_add(set, "volume", [5, [0, 10]]);

time_held_right = 0;
time_held_left = 0;

menu[MAIN][0] = "Новая игра";
menu[MAIN][1] = "Продолжить";
menu[MAIN][2] = "Настройки";
menu[MAIN][3] = "Выход";

menu[SETTINGS][0] = [" < Громкость > ", "volume"];
menu[SETTINGS][1] = "Назад";

index = 0; 
sub_menu = 0;

menu_x_pos = room_width * .5;
menu_y_pos = room_height * .4;
click_area_w = 35;

function button(_y, _wl, _wr, _h) constructor {
	y = _y;
	wl = _wl;
	wr = _wr;
	h = _h;
}

var _h = 40;

for (var a = 0; a < TOTAL; ++a){
	for (var b = 0; b < array_length(menu[a]); b++){
		button_arr[a][b] = new button(0, room_width/2, room_width/2, _h);
	}
}