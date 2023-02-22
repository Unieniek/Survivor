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