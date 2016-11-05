///load_player_ship(file_name)
file_name = argument0;

// Load the player variables from the save file
if file_exists(file_name)
{
    ini_open(file_name);
    

        ship_type = ini_read_string("ship", "type", 0);
        ship_shield = ini_read_real("ship", "shield", 0);
        ship_max_shield = ini_read_real("ship", "max_shield", 0);        
        ship_armor = ini_read_real("ship", "armor", 0);
        ship_max_armor = ini_read_real("ship", "max_armor", 0);        
        ship_hull = ini_read_real("ship", "hull", 0);
        ship_max_hull = ini_read_real("ship", "max_hull", 0);        
        ship_speed = ini_read_real("ship", "speed", 0);
        ship_max_speed = ini_read_real("ship", "max_speed", 0);
        ship_slots = ini_read_real("ship", "ship_slots", 0);

        // Create the instance of the ship... this may need to be changed in the end...
        // store pointer to the created ship as the players current ship
        global.ship = instance_create(room_width/2, room_height/2, asset_get_index(ship_type));
        
        // Set the ship slots, this depends on the type of the ship
        global.ship.ship_slots = ship_slots;
        global.ship.shield = ship_shield;
        global.ship.max_shield = ship_max_shield;        
        global.ship.armor = ship_armor;
        global.ship.max_armor = ship_max_armor;        
        global.ship.hull = ship_hull;
        global.ship.max_hull = ship_max_hull;
        global.ship.movement_speed = ship_speed;
        global.ship.max_movement_speed = ship_max_speed;
        // set the movement speed to the maximum upon loading the ship object
        global.ship.movement_speed = global.ship.max_movement_speed;
        
        
        // instantiate the slots upon creation
        for (i = 0; i <= global.ship.ship_slots - 1; i++)
        {
            global.ship.slot[i] = 0;
            global.ship.ship_mount_x[i] = ini_read_real("slots", string(i) + "_mount_x", 0);
            global.ship.ship_mount_y[i] = ini_read_real("slots", string(i) + "_mount_y", 0);
        }
    
        // attach guns to the ship
        for (i = 0; i <= global.ship.ship_slots -1; i++)
        {
            gun_to_create = asset_get_index(ini_read_string("slots", string(i), 0));
            //add_weapon(ship, asset_get_index(gun_to_create), i);
            global.ship.slot[i] = instance_create(global.ship.ship_mount_x[i], global.ship.ship_mount_y[i], gun_to_create);
            
            if object_get_parent(global.ship.slot[i].object_index) != o_parent_power_gun
            {
                global.ship.slot[i].ammo = ini_read_real("slots", string(i) + "_ammo", 0);
                global.ship.slot[i].damage = ini_read_real("slots", string(i) + "_damage", 0);
                                
            }
            global.ship.slot[i].gun_slot_id = i;
        }
        ini_close();   
    
    // now that all is loaded, we can go to the mothership room (ship upgrade room)
    // for now start a mission to test if all is loaded properly
    //room_goto(r_mission_01);
    
}
else
{
    create_default_ship();
}
