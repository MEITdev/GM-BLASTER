///remove_from_purchased(gun_to_remove)
gun_to_remove = object_get_name(argument0);

show_debug_message("remove weapon name: " + string(gun_to_remove));

temp_list[0] = 0;
// re-create the purchased list only skip the specified weapon
for (i=0; i<array_length_1d(global.current_player.purchased); i+=1)
{
    if gun_to_remove != global.current_player.purchased[i]
    {
        temp_list[i] = global.current_player.purchased[i]
    }
};

// save temp list to purchased list
for (i=0; i<array_length_1d(temp_list); i+=1)
{
    global.current_player.purchased[i] = temp_list[i]
}

// now save the ship and the player details (update)
update_player(global.current_player.save_slot);
save_player_ship(global.current_player.ship_save_file);
