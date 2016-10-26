///load_settings()
ini_open("settings.ini");
global.Music = ini_read_string("general", "Music", "On");
global.Sound = ini_read_string("general", "Sound", "On");
global.Controller = ini_read_string("general", "Controller", "Keyboard");
global.Fullscreen = ini_read_real("general", "Fullscreen", 0);
global.Smoothing = ini_read_real("general", "Smoothing", 0);

// Controls
global.UP = ini_read_real("controls", "UP", ord("W"));
global.DOWN = ini_read_real("controls", "DOWN", ord("S"));
global.LEFT = ini_read_real("controls", "LEFT", ord("A"));
global.RIGHT = ini_read_real("controls", "RIGHT", ord("D"));
global.ACTION_01 = ini_read_real("controls", "ACTION_01", mb_left);
global.ACTION_02 = ini_read_real("controls", "ACTION_02", mb_right);
global.ACTION_03 = ini_read_real("controls", "ACTION_03", mb_middle);

ini_close();

