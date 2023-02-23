//draw growthbar
if(growth > growthmin){
	//growthbar y
	var _y = bbox_bottom + 2;
	

	var _amount = (200 - growth) / 200;
	
	//draw growthbar
	draw_set_color(growth_color);
	draw_rectangle(bbox_left, _y, bbox_left + sprite_width * _amount, _y + growthheight, 0);
	draw_set_color(-1);
	//draw growthbar border
	draw_rectangle(bbox_left, _y, bbox_right, _y + growthheight, 1);
	
	
}