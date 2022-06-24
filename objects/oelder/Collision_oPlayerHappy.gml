/// @description 

if (keyboard_check(vk_enter)){
	sprite_index = sElder;
	image_speed = 1;
}

if (sprite_index == sElder and image_index == 3) {
	image_speed = 0;
	sprite_index = sElderIdle;
	roomslides(room_next(room));
}