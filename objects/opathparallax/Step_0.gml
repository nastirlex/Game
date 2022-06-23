/// @description
/// @description parallax
var layerId = layer_get_id("forest");

var scrollSpeed = 0.7;

layer_x(layerId, camera_get_view_x(view_camera[0]) * scrollSpeed);