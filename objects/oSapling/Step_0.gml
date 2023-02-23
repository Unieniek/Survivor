//decreasing a cooldown
if(cooldown > 0) cooldown--;
//placing a tree and destroying a sapling
if (cooldown = 1){
	r = random(100)
	if(r > 0 && r < 75){
	instance_create_layer(x, y, "Instances2", oTree);
	instance_destroy(self);
	}else{
	instance_create_layer(x, y, "Instances2", oAppleTree);
	instance_destroy(self);
	}

}
	
