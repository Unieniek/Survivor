if (hp <= 0){
	instance_destroy();
	
	//how many resources to create
	var _resCount = choose(1, 1, 1, 1, 2, 2, 3);
	
	//gets number of resources to "res" array
	var _resMax = array_length(res);
	
	//create resources
	repeat (_resCount){
		//get random resource
		var _resID = irandom (_resMax - 1);
		
		var _res = res[_resID];
		
		//random item postition
		var _x = x + irandom_range(-4, 4);
		var _y = y + irandom_range(-4, 4);
		
		//create oItem
		var _inst = instance_create_layer(_x, _y, "instances", oItem);
		
		//set item properties
		with(_inst){
			type = _res;
			
			sprite_index = global.itemSprite[_res];
			
			z = -other.sprite_height /2;
		}
		
		
	}
}