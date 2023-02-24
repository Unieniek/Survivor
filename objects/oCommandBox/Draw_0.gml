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
					show_debug_message(splits);
					var _item = splits[1];
						if (_item == "ITEM.SAPLING"){
							var _count = splits[2];
							show_debug_message(_item);
							show_debug_message(_count);
							inv_add(ITEM.SAPLING, splits[2]);
							clicked = false;
						}			
				}
				}
		}
		
}
//if(splits[0] = give){
//	show_debug_message("dziala");
////}
//if(keyboard_check_pressed(vk_enter)){
//show_debug_message(" 1 slowo " + splits[0]);
//show_debug_message(" 2 slowo " + splits[1]);
//show_debug_message(" 3 slowo " + splits[2]);
//}
//	var _space = string_pos_ext(" ", _message, 1);
//	_messageWords1 = string_copy(_message, 1, _space);
//	//var ms1l = string_length(_messageWords1);

//	var _space2 = string_pos_ext(" ", _message, _space + 1);
//	_messageWords2 = string_copy(_message, _space + 1,  _space2);
//	//var ms2l = (string_length(_messageWords2) + string_length(_messageWords1));
	
//	var _space3 = string_pos_ext(" ", _message, _space2 + 1);
//	_messageWords3 = string_copy(_message, _space2 + 1, _space3);


//if(keyboard_check_pressed(vk_enter)){
//show_debug_message(" 1 slowo " + _messageWords1);
//show_debug_message(" 2 slowo " + _messageWords2);
//show_debug_message(" 3 slowo " + _messageWords3);
//}

	if(_message = "give sapling 5"){
		inv_add(ITEM.SAPLING, 5);
		clicked = false;
	}
}
if(clicked = false){
keyboard_string = 0;
}
