/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
if (keyboard_check(vk_enter)){
	roomslides(room_next(room));
	newX = 10;
	newY = 100;
	audio_stop_sound(Sound_Cage);
	audio_stop_sound(Sound_Water);
	instance_destroy(oPlayer);
}