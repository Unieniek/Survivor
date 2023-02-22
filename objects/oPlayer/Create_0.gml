moveSpeed = 1;

moveX = 0;
moveY = 0;

//kierunek
dir_player = 0;

//distance to cave
cave_dist = 0;

//create pickaxe
heldItem = instance_create_layer(x, y, "Instances", oPickaxe);

//destroy all entities in a range
if (distance_to_object(oTree) < 200){
	show_debug_message(oTree);
}