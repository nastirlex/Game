/// @description Insert description here
// You can write your code in this editor
ini_open("save.ini"); // открытие файла
	isShow = ini_read_string("Cristal", "Uporstvo", "true");
ini_close();

if (isShow == "false"){
	image_alpha = 0;
}