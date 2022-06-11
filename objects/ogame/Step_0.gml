/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var layerId = layer_get_id("bamboosBack");

var scrollSpeed = 0.7;

layer_x(layerId, camera_get_view_x(view_camera[0]) * scrollSpeed);