/// @description
//openDialog(tDialog1);
	d = instance_create_depth(0, 0, 0, oDialog);
	d.timeline_index = tDialog1;
	d.timeline_running = true;
	d.timeline_speed = 0; // 0: переключаем фразы сами
	d.timeline_position = 1;
	global.symbols = 0;