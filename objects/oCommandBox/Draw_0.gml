
draw_self();
_mousepos = instance_position(mouse_x, mouse_y, oCommandBox);

if(_mousepos && mouse_check_button_pressed(mb_left)){

	if(clicked = false){
	sprite_index = sCommandBoxClicked;
	draw_set_valign(fa_middle);
	draw_text(x, y, _message);
	clicked = true;
	}else{
	sprite_index = sCommandBox;
	clicked = false;
	}
}

