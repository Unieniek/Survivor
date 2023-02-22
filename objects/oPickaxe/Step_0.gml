//rotation
rotation = lerp(rotation, 45, 0.1);
image_angle = rotation * oPlayer.image_xscale;

//get input
var _mousePress = mouse_check_button(mb_left);

//breakable instance at mouse position
var _breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with(_breakable){
	//get distance
	var _dist = distance_to_object(oPlayer);
	
	//in range?
	if(_dist < other.breakInstance){
		
		//make it selected
		other.selectorInst = id;
		//click
		if(other.cooldown == 0 && _mousePress){
			audio_play_sound(snHit, 10, false);
		//reduce hp
		hp--;
		
		//set rotation
		other.rotation = -80;
		
		//set cooldown
		other.cooldown = 20;
		
		}
	}


}

if(cooldown > 0) cooldown--;