///load_player_data(save_slot)
file_name = "slot_" + string(argument0) + ".ini";

// Load the player variables from the save file
if file_exists(file_name)
{
    ini_open(file_name);
    
    // save Player information
    global.current_player.name = ini_read_string("player", "name", "Bob");
    global.current_player.experience = ini_read_real("player","experience", 0);
    global.current_player.level = ini_read_real("player","level", 1);
    global.current_player.credits = ini_read_real("player", "credits", 0);
    global.current_player.avatar_id = ini_read_real("player", "avatar_id", 0);
    global.current_player.skill_id = ini_read_real("player", "skill_id", 0);
    // now select that as the file ship name   
    global.current_player.ship_save_file = ini_read_string("player", "ship", "default_ship.ini");
    
    //close the save file
    ini_close();
}
