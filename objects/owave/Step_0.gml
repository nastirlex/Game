/// @description Insert description here
// You can write your code in this editor

timer -= 1;

if (timer <= 250){
	image_alpha = 0;
}
if (timer == 0) {
	timer = 100 * 5;
	image_alpha = 1;
}