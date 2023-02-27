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
