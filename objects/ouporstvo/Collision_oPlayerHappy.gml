/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_enter) && image_alpha == 1) {
	image_alpha = 0;
	ini_open("save.ini"); // открытие файла
		count = ini_read_real("Cristals", "count", 0);
		count += 1;
		ini_write_real("Cristals", "count", count);
	ini_close();
	instance_destroy( oCristalManager);
	instance_create_depth(0,0,0, oCristalManager);
}
