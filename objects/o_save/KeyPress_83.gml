/// @description Insert description here
// You can write your code in this editor
ini_open("save.ini"); // открытие файла
ini_write_real("Room", "rm_number", room);
ini_write_string("Room", "rm_number", "saved");
ini_close(); // закрытие файла