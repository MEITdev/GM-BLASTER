///load_settings()
ini_open("settings.ini");
global.Music = ini_read_string("general", "Music", "On");
global.Sound = ini_read_string("general", "Sound", "On");
global.Controller = ini_read_string("general", "Controller", "Keyboard");

// Controls
global.UP = ini_read_real("controls", "UP", ord("W"));
global.DOWN = ini_read_real("controls", "DOWN", ord("S"));
global.LEFT = ini_read_real("controls", "LEFT", ord("A"));
global.RIGHT = ini_read_real("controls", "RIGHT", ord("D"));

ini_close();
