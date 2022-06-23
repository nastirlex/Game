/// @description Insert description here
// You can write your code in this editor
ini_open("save.ini"); // открытие файла
flag = ini_read_string("Room", "flag", "newgame");
loadX = ini_read_real("Player", "x_coord", 100);
loadY = ini_read_real("Player", "y_coord", 100);
ini_close(); // закрытие файла

if (flag == "saved"){
	instance_destroy(oPlayer);
	instance_create_layer(loadX, loadY, layer, oPlayer);
}