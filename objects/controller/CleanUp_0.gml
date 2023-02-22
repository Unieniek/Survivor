camera_destroy(view_camera);
ds_list_destroy(invList);

if(surface_exists(pauseSurf)){
		surface_free(pauseSurf);
}