var _f = keyboard_check_pressed(ord("F"));

//surface_resize(results[1], 320, 180);
//video_draw();
if(_f){
play = true;
}
if(play){
	var results = video_draw();
	draw_surface(results[1], oPlayer.x - 640, oPlayer.y - 360);
	
}