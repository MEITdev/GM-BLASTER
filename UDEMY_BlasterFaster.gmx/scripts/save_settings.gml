///save_settings()

// create the settings file
ini_open("settings.ini");
ini_write_string("general", "Music", global.Music);
ini_write_string("general", "Sound", global.Sound);
ini_write_string("general", "Controller", global.Controller);

// user controls
ini_write_real("controls", "UP", global.UP);
ini_write_real("controls", "DOWN", global.DOWN);
ini_write_real("controls", "LEFT", global.LEFT);
ini_write_real("controls", "RIGHT", global.RIGHT);

ini_close();
