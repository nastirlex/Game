/// @description
image_alpha = 1;

if (keyboard_check(vk_enter)){
	roomslides(room_next(room));
	audio_stop_all();
}