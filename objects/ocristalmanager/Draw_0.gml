/// @description Insert description here
// You can write your code in this editor


mes = "Собрано ";

ini_open("save.ini"); // открытие файла
count = ini_read_real("Cristals", "count", 0);
ini_close(); // закрытие файла

//x1 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 70;
//y1 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 50;

draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 70, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 50, mes + string(count));
//