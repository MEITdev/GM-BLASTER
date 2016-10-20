///save_player(slot)
// Saves the player created character information
save_file = "slot_" + string(argument0) + ".ini";

if file_exists(save_file)
{
    // display some error message that the player already exists...
    // TODO: implement in the release version
}
else
{
    ini_open(save_file);
    
    // save Player information
    ini_write_string("player", "name", global.current_player.name);
    ini_write_real("player", "experience", global.current_player.experience);
    ini_write_real("player", "level", global.current_player.level);
    ini_write_real("player", "credits", global.current_player.credits);
    ini_write_real("player", "avatar_id", global.current_player.avatar_id);
    ini_write_real("player", "skill_id", global.current_player.skill_id);
    
    
    //ini_write_string("purchased", "0", global.current_player.purchased[0]);
    
    // save the items the player has already purchased
    for (i = 0; i <= array_length_1d(global.current_player.purchased) - 1; i++)
    {
        // this will store the name of the object in text form
        ini_write_string("purchased", string(i), global.current_player.purchased[i]);
    }

       
    // also save the name of the ship
    // the file name for the ship will be a single integer that is available

    // while the file name exists...    
    global.current_player.ship_save_file = string(irandom(9999)) + ".ini";
    while file_exists(global.current_player.ship_save_file)
    {
        // try to get another random number
        global.current_player.ship_save_file = string(irandom(9999)) + ".ini";
    }
    
    // now select that as the file ship name   
    ini_write_string("player", "ship", global.current_player.ship_save_file);
    
    //close the save file
    ini_close();
        
}
