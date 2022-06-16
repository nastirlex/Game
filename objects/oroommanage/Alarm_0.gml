/// @description затемнение
// Вы можете записать свой код в этом редакторе
if (global.dark < 1) { // если экран не затемнен, то постепенно затемняем
	global.dark += 0.05;
	alarm[0] = 1;
} else {
	room_goto(roomGo);
	alarm[1] = 1;
}