/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//get array from the list
var _list = controller.invList;
var _arr = _list[| slotID];

//draw item
if (is_array(_arr)){
	//variables for taking data out of the array
	var _item = _arr [0];
	var _count = _arr[1];
	var _spr = global.itemSprite[_item];
	
	//draw it only if the item count is bigger than 0
	if (_count > 0){
	draw_sprite (_spr, 0, x + width / 2, y + height / 2);
	draw_set_font(ftUI);
	draw_text(x + 1, y - 1, _count);
	}
	
	

}
