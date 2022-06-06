var left_move = (keyboard_check(ord("A")) || keyboard_check(vk_left))
var right_move = (keyboard_check(ord("D")) || keyboard_check(vk_right))
var jump_move = (keyboard_check_pressed(vk_space) || keyboard_check(vk_up));

// horizontal movement
wallJumpDelay = max(wallJumpDelay - 1, 0);
if(wallJumpDelay == 0) {
	var move = right_move - left_move;

	horizSpeed = move * walkSpeed;
}

// wall jump
if(onWall != 0) && (!place_meeting(x, y + 1, oInvisibleWall)) && (jump_move) {
	wallJumpDelay = wallJumpDelayMax;
	horizSpeed = -onWall * jumpSpeed;
	vertSpeed = vertWallJump;	
}

//vertical movement
var grvFinal = grv;
var vertSpeedMaxFinal = vertMax;
if(onWall != 0) && (vertSpeed > 0) {
	grvFinal = grv_wall;
	vertSpeedMaxFinal = vertMaxWall;
}
vertSpeed += grvFinal;


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

// чтобы не застревать в структурах
if(place_meeting(x, y, oInvisibleWall)) {
	for(var i = 0; i < 1000; ++i) {
		if(!place_meeting(x + i, y, oInvisibleWall)) {
			x += i;
			break;
		}
		if(!place_meeting(x - i, y, oInvisibleWall)) {
			x -= i;
			break;
		}
		if(!place_meeting(x, y + i, oInvisibleWall)) {
			y += i;
			break;
		}
		if(!place_meeting(x, y - i, oInvisibleWall)) {
			y += i;
			break;
		}
		//top right
		if(!place_meeting(x + i, y - i, oInvisibleWall)) {
			x += i;
			y -= i;
			break;
		}
		//top left
		if(!place_meeting(x - i, y - i, oInvisibleWall)) {
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if(!place_meeting(x + i, y + i, oInvisibleWall)) {
			x += i;
			y += i;
			break;
		}
		//bottom left
		if(!place_meeting(x - i, y + i, oInvisibleWall)) {
			x -= i;
			y += i;
			break;
		}
		
	}
}

onWall = place_meeting(x + 1, y, oInvisibleWall) - place_meeting(x - 1, y, oInvisibleWall);

// animation
if(!place_meeting(x, y + 1, oInvisibleWall)) { // если в воздухе
	if(onWall != 0) {
		sprite_index = playerWall; 
		image_xscale = onWall;
	} else {
		dust = 0; 
		sprite_index = playerRest;
		image_speed = 0;
		image_index = (vertSpeed > 0);
		
	}
	//sprite_index = playerJump;
	//image_speed = 0;
	//if(vertSpeed > 0) image_index = 1; else image_index = 0; // при падении включаем второй кадр из прыжка, если вверх - первый
} else { // приземление на пол
	image_speed = 1;
	if(horizSpeed == 0) sprite_index = playerRest; else sprite_index = playerWalk;
}

if(horizSpeed != 0) image_xscale = sign(horizSpeed); // спрайты только вправо смотрят, это для переворота , если скорость > 0, sign=1, то правый спрайт, скорость < 0, sign=-1 -> левый спрайт




// image_speed = walkSpeed / 3; // скорость анимации, если = 1, то та скорость, которую мы установили

//if(keyboard_check(vk_shift)) {
//	walkSpeed = 7;
//}