 //keyboard press variable
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));


//input variable
var _inputX = _right - _left;
var _inputY = _down - _up;

//distance to cave
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
if(keyboard_check_pressed(ord("")))
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

//japierdole nie mam ni chuja pojecia jak to opisac ale dziala i chuj
var _list = controller.invList;
var _listSize = ds_list_size(_list);

for (var i = 0; i<_listSize; i++){
var _arr = controller.invList[| i];
var _item = _arr[0];
var _count = _arr[1];



	//if apple or sappling is true than select sapling
	if(controller.aors = true){
		//placing a sapling
		if(mouse_check_button(mb_right) && sapling_cooldown = 0 && _placable < 32 && _item = 6 && _count > 0){
		//adding value to item sapling
		inv_add(ITEM.SAPLING,-1);
		//place a sapling 
		instance_create_layer(mouse_x, mouse_y,"Instances", oSapling);
		//restart sapling cooldown
		sapling_cooldown = 100;
		}
	//if apple or sapling is false choose apple
	}else if (controller.aors = false){
		//if mouse right button is pressed
		if(mouse_check_button(mb_right) && sapling_cooldown = 0 && _item = 0 && _count > 0){
			//if controller is equal or lower to five
			if(controller.hp <= 5){
			//substract one apple from inventory
			inv_add(ITEM.APPLE,-1);
			//add 5 hp
			controller.hp += 5;
			//if hp is in range from 5 to 10
			}else if(controller.hp > 5 && controller.hp <10){
			inv_add(ITEM.APPLE,-1);
			controller.hp = 10;
			//if hp is equal to 10
			}else if(controller.hp = 10){
			controller.hp = 10;
			}
		sapling_cooldown = 100;
		}

	}	
}
		

if(distance_to_object(oEnemyParent) < 6){
	if(hcooldown > 0){
	hcooldown--;
	}
	
	if(hcooldown = 0){
	controller.hp--;
	hcooldown = 30;
	show_debug_message(controller.hp);
	}

}


//death
if(controller.hp = 0){

}
if(room = rmCave){
	if(keyboard_check_pressed(ord("T"))){
	room_goto(rmGame);
	}
}

