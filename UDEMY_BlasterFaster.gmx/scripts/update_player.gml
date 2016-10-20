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

// save the items the player has already purchased
for (i = 0; i <= array_length_1d(global.current_player.purchased) - 1; i++)
{
    // this will store the name of the object in text form
    ini_write_string("purchased", string(i), string(global.current_player.purchased[i]));
}

//close the save file
ini_close();
        

