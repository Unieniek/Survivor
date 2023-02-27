/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(xgoto = x){
	if(irandom(1) > 0){
		if(irandom(50) > 25){
			if(irandom(1)>0){
			xgoto =x + random_range(25, 50);
			}else{
			xgoto =x - random_range(25, 50);	
			}
		}
	
	}
}
if(xgoto > x){
	x++;
}else if(xgoto < x){
	x--;
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