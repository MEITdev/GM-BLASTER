///save_settings()

// create the settings file
ini_open("settings.ini");
ini_write_string("general", "Music", global.Music);
ini_write_string("general", "Sound", global.Sound);
ini_write_string("general", "Controller", global.Controller);
ini_write_real("general", "Fullscreen", global.Fullscreen);
ini_write_real("general", "Smoothing", global.Smoothing);
ini_write_real("general", "Vsync", global.Vsync);
ini_write_real("general", "AAlevel", global.AAlevel);


// user controls
ini_write_real("controls", "UP", global.UP);
ini_write_real("controls", "DOWN", global.DOWN);
ini_write_real("controls", "LEFT", global.LEFT);
ini_write_real("controls", "RIGHT", global.RIGHT);
ini_write_real("controls", "ACTION_01", global.ACTION_01);
ini_write_real("controls", "ACTION_02", global.ACTION_02);
ini_write_real("controls", "ACTION_03", global.ACTION_03);

ini_close();
