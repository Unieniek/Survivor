 //zmienne do przycisków
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));


//zmienna wejściowa
var _inputX = _right - _left;
var _inputY = _down - _up;

var cave_dist = distance_to_object(oCave);
//movement speed
moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;

//collision
if (collision(x + moveX, y)) {
	while (!collision(x + sign(moveX), y)){
	x += sign(moveX);
	}
	moveX = 0;
}
if (collision(x, y + moveY)){
	while (!collision(x, y + moveY)){
	y += sign(moveY);
	}
	moveY = 0;
}
//move
x += moveX;
y += moveY;

//animation
if (moveX != 0 or moveY != 0){
sprite_index = sWalk;
}
//animation idle
else{
	sprite_index = sIdle;
}

//driection
var _signMouse = sign(mouse_x - x);

if (_signMouse != 0){
image_xscale = _signMouse;
}

//animation speed
if (moveX != 0 && sign(moveX) != _signMouse){
	image_speed = -1;
}
else{
image_speed = 1;
}

if(cave_dist <= 30 && keyboard_check(ord("E")) ){
room_goto(rmCave);

}




