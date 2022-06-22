/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
if (keyboard_check(vk_enter)){
	roomslides(room_next(room));
	audio_stop_sound(Sound_Cage);
	audio_stop_sound(Sound_Water);
}