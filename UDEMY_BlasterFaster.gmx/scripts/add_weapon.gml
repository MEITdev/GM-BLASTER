///add_weapon(weapon, slot)
weapon_to_add = argument0;
slot = argument1;

// Destroy the current gun that is attached
if instance_exists(global.ship)
{
    if instance_exists(global.ship.slot[slot])
    {
        with (global.ship.slot[slot])
        {
            instance_destroy();
        }
    }
}

// now attach the new weapon
global.ship.slot[slot] = instance_create(global.ship.ship_mount_x[slot], global.ship.ship_mount_y[slot], weapon_to_add);

// inform the gun object what the mount points are - THIS WILL NEED SOME THINKING...
global.ship.slot[slot].gun_slot_id = slot;

// load the ammo if the player already owns this gun
file_name = "slot_" + string(global.current_player.save_slot) + ".ini";
if file_exists(file_name)
{
    ini_open(file_name)
    {
        // loop through the purchased weapons to see if the weapon is owned by the player
        weapon_to_check = object_get_name(global.ship.slot[slot].object_index);    // what object we are trying to find
        show_debug_message("weapon to check: " + string(weapon_to_check));
        is_owned = false; // flag false as default
        for (i = 0; i < array_height_2d(global.current_player.purchased); i++)
        {
            weapon_from_list = ini_read_string("purchased", string(i), 0);
            // compare the names and if in list flag the variable
            if weapon_from_list == weapon_to_check
            {
                // if weapon is owned, set the ammo
                is_owned = true;
                read_ammo = ini_read_real("purchased", string(i) + "_ammo", 0);
                read_damage = ini_read_real("purchased", string(i) + "_damage", 0);
                
                global.ship.slot[slot].ammo = read_ammo;
                global.ship.slot[slot].damage = read_damage;
            }
        }
    }
    ini_close();   
}
