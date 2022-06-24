/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _left_held = keyboard_check(vk_left);
var _right_held = keyboard_check(vk_right);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

//holding key down
var _repeat_spd = 8;
var _repeat_delay = 25;

if (_right) time_held_right = _repeat_delay;
if (time_held_right > 0){
	time_held_right--;
	if (time_held_right == 0 and _right_held){
		_right = true;
		time_held_right = _repeat_spd;
	}
}

if (_left) time_held_left = _repeat_delay;
if (time_held_left > 0){
	time_held_left--;
	if (time_held_left == 0 and _left_held){
		_left = true;
		time_held_left = _repeat_spd;
	}
}

var _move = _down - _up;
var _hmove = _right - _left;
if _move != 0 {
	index += _move;
	var _size = array_length(menu[sub_menu]);
	if (index < 0) index = _size - 1;
	else if (index >= _size) index = 0;
}


function process_menu (_select, _hmove){
	if (_select or (is_array(menu[sub_menu][index]) and (_hmove != 0))){
		switch (sub_menu){
			case(MAIN):
				switch(index){
					case 0: //Старт
						roomslides(room_next(room));
						ini_open("save.ini"); // открытие файла
						ini_write_string("Room", "flag", "newgame");
						ini_write_real("Cristals", "count", 0);
						ini_close(); // закрытие файла
						audio_stop_sound(Sound_menu);
					break;
					case 1:
						ini_open("save.ini"); // открытие файла
						rm_number = ini_read_real("Room", "rm_number", 1);
						flag = ini_read_string("Room", "flag", "newgame");
						ini_write_string("Saving", "flagR", "true");
						ini_close(); // закрытие файла
						show_debug_message(rm_number);
						if (flag == "saved"){
							roomslides(rm_number);
							audio_stop_all();
						}
						else {
							
						}
					break;
					case 2: //Настройки
						sub_menu = SETTINGS;
						index = 0;
					break;
					case 3: //Выход
						game_end();
					break;
				}
			break;
			case(SETTINGS):
				switch(index){
					case 0: //Громкость
						change_menu(_hmove, "volume");
						audio_sound_gain(Sound_menu, (set[? "volume"][0])/10, 0);
					break;
					case 1: //Выход
						ini_open("save.ini"); // открытие файла
						ini_write_real("Menu", "volume", set[? "volume"][0]);
						ini_close(); // закрытие файла
						show_debug_message(set[? "volume"][0]);
						sub_menu = MAIN;
						index = 1;
					break;
				}
			break;
		}
	}
}
	
process_menu(_select, _hmove);

function change_menu(_move, _key){
	var _map_arr = set[? _key];
	var _limits_arr = _map_arr[1];
	
	var _min = _limits_arr[0];
	var _max = _limits_arr[1];
	
	_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max);
	
}