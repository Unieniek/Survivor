//draw selector
if (instance_exists(selectorInst)){
	//run code on selected instance
	with(selectorInst){
	
	//draw selector on all corners
	draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_top, 1, 1, 0, -1, 1);
	draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
	draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
	draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_bottom, 1, 1,90, -1, 1);
	}
	//animation
	selectorFrame += 0.15;
	
	if (selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;
	
	//reset selector frame instance
	selectorInst = noone;





}