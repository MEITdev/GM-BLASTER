///update_player(slot)
// Saves the player created character information
save_file = "slot_" + string(argument0) + ".ini";

ini_open(save_file);

// save Player information
ini_write_string("player", "name", global.current_player.name);
ini_write_real("player", "experience", global.current_player.experience);
ini_write_real("player", "level", global.current_player.level);
ini_write_real("player", "credits", global.current_player.credits);
ini_write_real("player", "avatar_id", global.current_player.avatar_id);
ini_write_real("player", "skill_id", global.current_player.skill_id);
ini_write_string("player", "ship", global.current_player.ship_save_file);

//close the save file
ini_close();
        

