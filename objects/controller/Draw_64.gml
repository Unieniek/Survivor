//inventory debug
//var _listSize = ds_list_size(invList);

//for (var i=0; i<_listSize; i++){
//	//get array data
//	var arr = invList[| i];
//	var _item = arr[0];
//	var _count = arr[1];

	
//	//draw position
//	var _x = 8;
//	var _y = 8 + 20 * i;
	
//	//draw sprite
//	var _spr = global.itemSprite[_item];
//	draw_sprite(_spr, 0, _x, _y);

//	//draw counter
//	draw_text(_x + 4, _y - 2, _count);
//}
var _x = 8;
var _y = 8;
var _amount = hp/hpMax;

draw_set_color(hp_color);
draw_rectangle(_x, _y, _x + 50 * _amount, _y + 10, 0);

draw_set_color(0);
//draw_set_halign(fa_left);
//draw_set_valign(fa_middle);
draw_text(_x + 25, _y + 5  , hp);

draw_rectangle(_x, _y, _x + 50, _y + 10, 1);

if (aors = true){
	//draw_set_halign(fa_middle);

	draw_text(150, 160, "sapling")
}else{
	//draw_set_halign(fa_middle);
	draw_text(150, 160, "apple")
}
if(keyboard_check_pressed(ord("M"))){
	if(tandd = false){
	tandd = true;
	}else{
	tandd = false;
	}
}
if(time > -10000){
time--;
}
if(time = -10000){
time = 10000;
}
if(time <= 5000 && time > 4000 or time > -5000 && time <= -4000){
	draw_set_alpha(0.1);
	draw_rectangle(0, 0 , 320, 180, 0);
}else if(time <= 4000 && time > 3000 or time > -4000 && time <= -3000){
	draw_set_alpha(0.2);
	draw_rectangle(0, 0 , 320, 180, 0);
}
else if(time <= 3000 && time > -3000){
	if(time <= 3000 && time > 2000 or time > -3000 && time <= -2000){
	draw_set_alpha(0.3);
	draw_rectangle(0, 0 , 320, 180, 0);
	}
	if((time <= 2000 && time > 1000) or (time > -2000 && time <= -1000)){
	draw_set_alpha(0.4);
	draw_rectangle(0, 0 , 320, 180, 0);
	}
	if(time <= 1000 && time > -1000){
	draw_set_alpha(0.5);
	draw_rectangle(0, 0 , 320, 180, 0);
	}
	instance_activate_object(oEnemyParent);
	if(cooldown = 0){
		randomise();
		var _xz = irandom_range(100, 300);
		var _yz = irandom_range(100, 300);
		rand = irandom(3);
		if (rand = 0){
			instance_create_layer(oPlayer.x +_xz, oPlayer.y + _yz, "Instances", oZombie);
			cooldown = 100;
		}else if(rand = 1){
			instance_create_layer(oPlayer.x -_xz, oPlayer.y - _yz, "Instances", oZombie);
			cooldown = 100;
		}else if(rand = 2){
			instance_create_layer(oPlayer.x -_xz, oPlayer.y + _yz, "Instances", oZombie);
			cooldown = 100;
		}else if(rand = 3){
			instance_create_layer(oPlayer.x +_xz, oPlayer.y - _yz, "Instances", oZombie);
			cooldown = 100;
		}
	}else if (cooldown > 0){
		cooldown--;
	}

}else if(time > 5000 or time < -5000){
instance_destroy(oEnemyParent);
}	

show_debug_message(time);