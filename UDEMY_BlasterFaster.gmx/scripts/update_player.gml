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
ini_write_real("player", "skill_points", global.current_player.skill_points);
ini_write_real("player", "metal", global.Metal);
    
// save the count of how many skills does the player know
ini_write_real("skills", "count", array_length_1d(global.current_player.skills_known));

// save the player known skills
for (i=0; i<array_length_1d(global.current_player.skills_known); i+=1)
{
    ini_write_real("skills", string(i), global.current_player.skills_known[i]);        
};
//ini_write_real("player", "skill_id", global.current_player.skill_id);


// save the number of purchased weapons
ini_write_real("purchased", "count", array_length_1d(global.current_player.purchased));
// Save players purchased weapons
for (i = 0; i < array_length_1d(global.current_player.purchased); i++)
{
    ini_write_string("purchased", string(i), string(global.current_player.purchased[i]));
}

ini_write_string("player", "ship", global.current_player.ship_save_file);

//close the save file
ini_close();
        

