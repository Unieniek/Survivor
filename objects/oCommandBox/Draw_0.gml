draw_self();
//message to be shown
var _message = "";

_mousepos = instance_position(mouse_x, mouse_y, oCommandBox);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x, y, _message);

if(_mousepos && mouse_check_button_pressed(mb_left)){

	if(clicked = false){
	sprite_index = sCommandBoxClicked;
	clicked = true;
	
	
	}else{
	sprite_index = sCommandBox;
	instance_activate_all();
	clicked = false;
	}
}
if(clicked = true){
_message = keyboard_string;
draw_text(x, y, _message);
if(keyboard_check_pressed(vk_enter)){	
	var splitBy = " "; //string to split the first string by
	var slot = 0;
	var splits; //array to hold all splits
	var str2 = ""; //var to hold the current split we're working on building

	var i;
		for (i = 1; i < (string_length(_message)+1); i++) {
			var currStr = string_copy(_message, i, 1);
				if (currStr == splitBy) {
					splits[slot] = str2; //add this split to the array of all splits
					slot++;
					str2 = "";
				} else {
					str2 = str2 + currStr;
					splits[slot] = str2;
				}
				
					if(keyboard_check_pressed(vk_enter)){
						if(splits[0] == "give" && slot>2){
						var _item = splits[1];
						var _count = splits[2];
							if (_item == "sapling"){
								inv_add(ITEM.SAPLING, splits[2]);
								clicked = false;
							}
							if(_item == "log"){
								inv_add(ITEM.LOG, splits[2]);
								clicked = false;
							}
							if(_item == "apple"){
								inv_add(ITEM.APPLE, splits[2]);
								clicked = false;
							}
							if(_item == "stone"){
								inv_add(ITEM.STONE, splits[2]);
								clicked = false;
							}
							if(_item == "iron"){
								inv_add(ITEM.IRON, splits[2]);
								clicked = false;
							}
							if(_item == "diamond"){
								inv_add(ITEM.DIAMOND, splits[2]);
								clicked = false;
							}
							
							if(_item == "gold"){
								inv_add(ITEM.GOLD, splits[2]);
								clicked = false;
							}
							
						}
						else if(splits[0] = "god"){
						controller.hp = 100000;
						}
					}
		}
		
}
}
if(clicked = false){
keyboard_string = 0;
sprite_index = sCommandBox;
}
