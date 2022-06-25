/// @description
timeline_position++;
global.symbols = 0;
if (timeline_position = timeline_size(timeline_index)) {
	instance_destroy();
	roomslides(room_next(room));
}