 //keyboard press variable
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));


//input variable
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
//entering the cave
if(cave_dist <= 30 && keyboard_check(ord("E")) ){
room_goto(rmCave);

}
//placing a sapling
//distance to mouse pointer
var _placable = distance_to_object(oMouse);
//decreasing a cooldown
if(sapling_cooldown > 0){
sapling_cooldown --;
}

var _list = controller.invList;

//placing a sapling
if(mouse_check_button(mb_right) && sapling_cooldown = 0 && _placable < 32 && inv_add(ITEM.SAPLING, ) > 0){
inv_add(ITEM.SAPLING, -1);
instance_create_layer(mouse_x, mouse_y,"Instances", oSapling);
sapling_cooldown = 100;
}




