/// @description Insert description here
// You can write your code in this editor
timer -= 1;

if (timer == 0){
	d = instance_create_depth(0, 0, 0, oDialogGrandmaa);
	d.timeline_index = tDialogGrandma;
	d.timeline_running = true;
	d.timeline_speed = 0;
	d.timeline_position = 1;
	global.symbols = 0;
}