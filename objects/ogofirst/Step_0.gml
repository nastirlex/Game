/// @description Insert description here
// You can write your code in this editor
timer -= 1;

if (timer == 0 || keyboard_check(vk_enter)){
	audio_stop_all();
	roomslides();
}