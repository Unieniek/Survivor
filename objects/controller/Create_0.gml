//camera resolution
randomize();
enum RES {
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 4
}
//create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2)

//view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);

//inventory
invList = ds_list_create();

//pause
pause =false;

//pause surface (it saves last frame of the game)
pauseSurf = -1;
