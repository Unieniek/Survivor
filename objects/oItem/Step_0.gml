//collision with player
if(!collected && place_meeting(x, y, oPlayer)){

//add to inventory 
	var _added = inv_add(type, 1);

//collected
collected = _added;

}
//if collected make it disappear
if(collected){
	image_alpha -=0.05;
	y -= 0.5;
	
	//play pickup sound
	if(image_alpha) == 0.9{
	audio_play_sound(snPickUp, 10, false);
	}	
	//destroy
	if (image_alpha	< 0.1){
	instance_destroy();
	
	}

}
//gravity
if (z < 0){
	zspd += 0.5;
	z += zspd;
	
	//ground collision
	if(z >= 0){
		z = 0;
		zspd = 0;
	}


}