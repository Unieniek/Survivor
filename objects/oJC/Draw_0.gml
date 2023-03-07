var _f = keyboard_check_pressed(ord("F"));

//surface_resize(results[1], 320, 180);
//video_draw();
if(_f){
	if(play = false){
		play = true;
		wait = 640;
	}
}
if(wait = 0){
	if(play = true){
		video_open("JC_video.mp4");
		var results = video_draw();
		draw_surface(results[1], x , y );
	}
}else{
wait--;
}