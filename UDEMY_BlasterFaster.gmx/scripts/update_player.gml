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
ini_write_real("resources", "iron", global.Iron);
ini_write_real("resources", "titanium", global.Titanium);
ini_write_string("player", "difficulty", global.Difficulty);    
ini_write_real("player", "completedIntro", global.CompletedIntroMission);

// save the count of how many skills does the player know
ini_write_real("skills", "count", array_length_1d(global.current_player.skills_known));

// save the player known skills
for (i=0; i<array_length_1d(global.current_player.skills_known); i+=1)
{
    ini_write_real("skills", string(i), global.current_player.skills_known[i]);        
};
//ini_write_real("player", "skill_id", global.current_player.skill_id);


// the MANUAL method
for (i = 0; i < global.ship.ship_slots; i++)
{
    found = false; // the flag
    // do not check power weapons, those recharge and do not need any ammo
    if object_get_parent(global.ship.slot[i].object_index) == o_parent_power_gun 
    || object_get_parent(global.ship.slot[i].object_index) == o_empty_slot
    {
        // no need to update the ammo
        
    }
    else
    {
        
        slot_weapon = global.ship.slot[i]; // weapon in the current slot
        show_debug_message("slot weapon: " + string(slot_weapon));    
        // now try to find its ID in the purchased list
        for (j = 0; j < array_height_2d(global.current_player.purchased); j++)
        {
            purchased_weapon = global.current_player.purchased[j, 0]; // weapon from the purchased list
            show_debug_message("purchased_weapon: " + string(purchased_weapon));
            show_debug_message("slot_weapon: " + string(slot_weapon));
            // now compare those two
            if object_get_name(slot_weapon.object_index) == purchased_weapon 
            {
                show_debug_message("weapon in thep purchased list");
                found = true; // toggle flag
                global.current_player.purchased[j, 1] = slot_weapon.ammo; // save the ammo count to the array purchased 2nd dimension
                show_debug_message("set ammo to " + string(slot_weapon.ammo));
            }
        }
    }
}

// save the number of purchased weapons
ini_write_real("purchased", "count", array_height_2d(global.current_player.purchased));
// Save players purchased weapons
for (i = 0; i < array_height_2d(global.current_player.purchased); i++)
{
    ini_write_string("purchased", string(i), string(global.current_player.purchased[i, 0]));
    ini_write_real("purchased", string(i) + "_ammo", global.current_player.purchased[i, 1]);
}

// save the completed missions
ini_write_real("missions", "last_completed", global.CompletedMissions);


ini_write_string("player", "ship", global.current_player.ship_save_file);

//close the save file
ini_close();
        

