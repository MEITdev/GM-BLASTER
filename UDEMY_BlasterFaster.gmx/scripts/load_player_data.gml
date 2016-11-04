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
    global.current_player.skill_points = ini_read_real("player", "skill_points", 0);
    global.Difficulty = ini_read_string("player", "difficulty", "CryBaby");    
    global.Iron = ini_read_real("resources", "iron", 0);
    global.Titanium = ini_read_real("resources", "titanium", 0);
    
    global.CompletedIntroMission = ini_read_real("player", "completedIntro", false);
    // now turn the string to bool
    if global.CompletedIntroMission == 1
    {
        global.CompletedIntroMission = true;
    }
    else if global.CompletedIntroMission == 0
    {
        global.CompletedIntroMission = false;
    }
    
    // load the known skills to the global array
    count = ini_read_real("skills", "count", 0);
    for (i=0; i<count; i+=1)
    {
        global.current_player.skills_known[i] = ini_read_real("skills", string(i), "");
    };
    // global.current_player.skill_id = ini_read_real("player", "skill_id", 0);
        
    // read the number of purchased items to a variable
    count = ini_read_real("purchased", "count", 0);
    // load purchased weapons to the global list
    for (i = 0; i < count; i++)
    {
        global.current_player.purchased[i, 0] = ini_read_string("purchased", string(i), "");
        global.current_player.purchased[i, 1] = ini_read_real("purchased", string(i) + "_ammo", 0);
    }
    
    global.CompletedMissions = ini_read_real("missions", "last_completed", 0);
    show_debug_message("completed mission: " + string(global.CompletedMissions));

    

    
    // now select that as the file ship name   
    global.current_player.ship_save_file = ini_read_string("player", "ship", "default_ship.ini");
    
    //close the save file
    ini_close();
}
