/// @description Insert description here
// You can write your code in this editor
ini_open("save.ini"); // открытие файла
flagR = ini_read_string("Saving", "flagR", "true");
ini_write_string("Saving", "flagR", "false");
//loadX = ini_read_real("Player", "x_coord", 100);
//loadY = ini_read_real("Player", "y_coord", 100);
ini_close(); // закрытие файла

if (flagR == "true" && instance_exists(oPlayerHappy)){
	instance_destroy(oPlayer);
}

else if (flagR == "true") {
	instance_destroy(oPlayer);
	instance_create_layer(80, 100, layer, oPlayer);
}