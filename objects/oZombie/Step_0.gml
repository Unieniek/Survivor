/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for(i ){

}

if (distance_to_object(oPlayer)>0){
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

}