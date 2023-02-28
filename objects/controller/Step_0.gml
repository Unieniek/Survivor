if (keyboard_check_pressed(vk_escape)){
	//pause
	if (!pause){
		pause = true;
		
		//deactivate instances apart form controller
		
		instance_deactivate_all(true);
		
		//create pause surface
		pauseSurf = surface_create(RES.WIDTH, RES.HEIGHT);
		
		//copy surface
		surface_copy(pauseSurf, 0, 0, application_surface);
		
		//UI
		event_user(0);
		
	}
	//resume
	else{
		pause = false;
		
		//activate instances
		instance_activate_all();
		
		//remove pause surface
		if(surface_exists(pauseSurf)){
		surface_free(pauseSurf);
	}
		//UI
		event_user(1);
	}
	
}

if(JC = false){
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2)


//view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);
}
else if(JC = true){
var _camera = camera_create_view(0, 0, 720, 1280, 0, oPlayer, -1, -1, 720/2, 1280/2)


//view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);
}
//if(keyboard_check_pressed(ord("F"))){
//	JC = true;
//}

//changing between using an apple and a sapling true is sapling false is apple
if(keyboard_check_pressed(ord("R"))){
	if(aors = true){
	aors = false;
	}else{
	aors = true;
	}
	show_debug_message(aors);
}