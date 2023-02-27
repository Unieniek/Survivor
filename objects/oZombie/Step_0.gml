/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//distance to player
if(distance_to_object(oPlayer) > 30){
	//if destination is reached
	if(xgoto = x && ygoto = y){
		//if cooldown is down
		if(_stop = 0){
			randomise();
			//x or y
			var _xory = irandom (100);
			//random value
			var _ran = irandom(100);
			//random range
			var _range = irandom_range(25, 50);
			//50% chance for moving in x axis
			if(_xory > 50){
				//50% chance to move right
				if(_ran > 50){
				//setting a destination
				xgoto =x + _range * 2;
				//reseting cooldown
				_stop = irandom(100);
				//50% chance to move right
				}else{
				xgoto =x - _range * 2;
				_stop = irandom(100);
				}
			//50% chance to move in y axis
			}else{
				if(_ran > 50){
				ygoto =y + _range * 2;
				//movespeed = 1;
				_stop = irandom(100);
				}else{
	
				ygoto =y - _range * 2;
				//moveSpeed = -1;
				_stop = irandom(100);
				}
			}
		//if cooldown is not ready	
		}else{
		_stop--;
		}	
	
	}
	//if destination is set to player but they are out of reach
	if(xgoto = oPlayer.x && ygoto = oPlayer.y){
		//reset destination to restart the loop
		xgoto = x;
		ygoto = y;
}
//if distance to player is shorter than 60
}else if(distance_to_object(oPlayer) <= 30){
	//making a player coordinates a final destination
	xgoto = oPlayer.x;
	ygoto = oPlayer.y;
}	
//realising a destination
if(xgoto < x){
	//substracting movement speed (0.5) from x axis
	x -= moveSpeed;
}
if(xgoto > x){
	//adding movement speed (0.5) to x axis
	x += moveSpeed;
	
}
if(ygoto < y){
	y -= moveSpeed;
}
if(ygoto > y){
	y += moveSpeed;
	
}

//if player is in a range of 5, stop the movement
if (distance_to_object(oPlayer) < 5){
moveSpeed = 0;
}
//if player gets away reset the movement speed
if (distance_to_object(oPlayer) >= 5){
moveSpeed = 0.5;
}