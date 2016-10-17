///save_ship_config(ship, name)
ship = argument0;
file_name = argument1;

if file_exists(string(file_name))
{
    file_delete(string(file_name));
}

// create the settings file
ini_open(string(file_name));

// save ship information
ini_write_string("ship", "type", object_get_name(ship));
ini_write_real("ship", "shield", ship.shield);
ini_write_real("ship", "armor", ship.armor);
ini_write_real("ship", "hull", ship.hull);
ini_write_real("ship", "speed", ship.movement_speed);

// save the ship slots and the weapons
for (i = 0; i <= ship.ship_slots -1; i++)
{
    ini_write_string("slots", string(i), object_get_name(ship.slot[i].object_index));
}

// close the file
ini_close();
