var left_move = (keyboard_check(ord("A")) || keyboard_check(vk_left))
var right_move = (keyboard_check(ord("D")) || keyboard_check(vk_right))
var jump_move = (keyboard_check_pressed(vk_space) || keyboard_check(vk_up));

// Calculate movement
var move = right_move - left_move;

horizSpeed = move * walkSpeed;

vertSpeed = vertSpeed + grv;

if(place_meeting(x, y + 1, oInvisibleWall)) && (jump_move) {
	vertSpeed = -jumpSpeed;
}

// Horizontal collision
if(place_meeting(x + horizSpeed, y, oInvisibleWall)) {
	while(!place_meeting(x + sign(horizSpeed), y, oInvisibleWall)) {
		x += sign(horizSpeed);
	}
	horizSpeed = 0;
}
x += horizSpeed;


// Vertical collision
if(place_meeting(x, y + vertSpeed, oInvisibleWall)) {
	while(!place_meeting(x, y + sign(vertSpeed), oInvisibleWall)) {
		y += sign(vertSpeed);
	}
	vertSpeed = 0;
}
y += vertSpeed;

// Animation
if(!place_meeting(x, y + 1, oInvisibleWall)) {
	sprite_index = playerJump;
	image_speed = 0;
	if(vertSpeed > 0) image_index = 1; else image_index = 0; // при падении включаем второй кадр из прыжка, если вверх - первый
} else { // приземление на пол
	image_speed = 1;
	if(horizSpeed == 0) sprite_index = playerRest; else sprite_index = playerWalk;
}

if(horizSpeed != 0) image_xscale = sign(horizSpeed); // спрайты только вправо смотрят, это для переворота , если скорость > 0, sign=1, то правый спрайт, скорость < 0, sign=-1 -> левый спрайт

// image_speed = walkSpeed / 3; // скорость анимации, если = 1, то та скорость, которую мы установили

//if(keyboard_check(vk_shift)) {
//	walkSpeed = 7;
//}



