surface_resize(application_surface, RES.WIDTH, RES.HEIGHT);

var _windowWidth = RES.WIDTH * RES.SCALE;
var _windowHeight = RES.HEIGHT * RES.SCALE;

window_set_size(_windowWidth, _windowHeight);

room_goto(rmStart);